.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;


# instance fields
.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAcceleratorController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

.field mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAlwaysShowImageView:Landroid/widget/ImageView;

.field private mAlwaysShowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysShowTips:Landroid/widget/TextView;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field private mArtwork:Landroid/graphics/Bitmap;

.field mAutoBrightnessController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackMoreArea:Landroid/widget/RelativeLayout;

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevelView:Landroid/widget/TextView;

.field private mBatteryLevelViewKeyguard:Landroid/widget/TextView;

.field private mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

.field private mBatteryViewKeyguard:Lcom/flyme/systemui/FlymeBatteryMeterView;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field private mBlurArtBitmap:Landroid/graphics/Bitmap;

.field private mBlurArtBitmapForBackground:Landroid/graphics/Bitmap;

.field private mBlurBackground:Landroid/widget/ImageView;

.field private mBlurLockWallpaper:Landroid/graphics/Bitmap;

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mCarrierLabelHolster:Landroid/widget/TextView;

.field private mCarrierLabelKeyguard:Landroid/view/View;

.field private mCarrierLabelVisible:Z

.field mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

.field private mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mClockKeyguard:Landroid/view/View;

.field private mCollapsePanelsWithoutAnimation:Ljava/lang/Runnable;

.field private mColorControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

.field private mColorFilterAnim:Z

.field private mColorFilterValue:I

.field private mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

.field private mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

.field private mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

.field private mConnectionRateViewKeyguard:Lcom/flyme/systemui/statusbar/ConnectionRateView;

.field private mCurSlideFracOnKeyguard:F

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private mCurrentPackageName:Ljava/lang/String;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field mDataSaveController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

.field private mDateView:Landroid/view/View;

.field private mDateViewKeyguard:Landroid/view/View;

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field mDisabled:I

.field private mDisabledUnmodified:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field mDriveModeController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

.field mEdgeBorder:I

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mEyeProtectiveController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

.field private mFilterColorRunnable:Ljava/lang/Runnable;

.field mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field protected mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

.field protected mFlymeCommandQueue:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

.field mFlymeNotificationLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;",
            ">;"
        }
    .end annotation
.end field

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasArtwork:Z

.field private mHasClearedLightEffectsOnKeyguardShade:Z

.field mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderCarrierLabel:Landroid/widget/TextView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field private mHideMuscicRunnable:Ljava/lang/Runnable;

.field private mHolsterHeader:Landroid/widget/LinearLayout;

.field mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

.field mHomeActionListener:Landroid/view/View$OnTouchListener;

.field mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsExpend:Z

.field private mIsGuestMode:Z

.field private mIsSuperPowerSaveEnabled:Z

.field private mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

.field mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

.field private mKeyguardCarrierLabel:Landroid/widget/TextView;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

.field private mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

.field mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

.field mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastBackdropFrontAnimation:J

.field private mLastHasNotification:Z

.field private mLastLockToAppLongPress:J

.field private mLastLoggedStateFingerprint:I

.field private mLastVisibilityReportUptimeMs:J

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockWallpaper:Landroid/graphics/Bitmap;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

.field private mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field mNfcController:Lcom/flyme/systemui/statusbar/policy/NfcController;

.field private mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

.field mNotificationIconArea:Landroid/view/View;

.field mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mNotificationPanelGravity:I

.field mNotificationPanelMinHeightFrac:F

.field mNotificationReplyManager:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsExpansionFraction:F

.field mQueueLock:Ljava/lang/Object;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

.field mRingerModeController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field private mScreenOnComingFromTouch:Z

.field private mScreenOnTouchLocation:Landroid/graphics/PointF;

.field private mScreenPinningRequest:Lcom/flyme/systemui/recents/ScreenPinningRequest;

.field mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

.field mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mScrollViewAnim:Landroid/animation/Animator;

.field mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field private final mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field private mShowCarrierInPanel:Z

.field private mShowKeyguardClock:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mSmartTouchController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

.field private mSpaceController:Lmeizu/space/MSpaceController;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field private mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusBarHeaderHeight:I

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStatusIconsHolster:Landroid/widget/LinearLayout;

.field mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemIcons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field public mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

.field private mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

.field mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

.field private mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

.field private mTickerEnabled:Z

.field private mTickerHolster:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

.field private mTickerView:Landroid/view/View;

.field private mTickerViewHolster:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingPosition:I

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field mVpnController:Lcom/flyme/systemui/statusbar/policy/VpnController;

.field private mWaitingForKeyguardExit:Z

.field mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackMoreArea:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BackDropView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapsePanelsWithoutAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterAnim:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/meizu/keyguard/auto_color/ColorMasking;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeaderCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/meizu/media/music/KeyguardMusicController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic -get34(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic -get42(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic -get45(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerViewHolster:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get52()Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHolster:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "isFilter"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "newlyVisible"    # Ljava/util/Collection;
    .param p2, "noLongerVisible"    # Ljava/util/Collection;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p1, "vis"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "array"    # Landroid/util/ArraySet;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->restoreKeyguardWallpaper()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showArtworkBitmap()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateAlwaysShowArea(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "fakeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSuperPowerSaveModeChange()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p1, "dismissKeyguard"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseNotificationPanelOnKeyguardShade(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 310
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 320
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 353
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 354
    const/4 v1, 0x4

    .line 353
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 355
    const/16 v1, 0xd

    .line 353
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 609
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 610
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 307
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 386
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 387
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 388
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 390
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 396
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 454
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 458
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 461
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 464
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 482
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 486
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 489
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 491
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 494
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 500
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 504
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    .line 518
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    .line 534
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    .line 538
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 558
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 593
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 607
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 608
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 614
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 615
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 626
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 625
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 645
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 644
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 656
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 655
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 659
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 675
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 674
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 696
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 756
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 770
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastHasNotification:Z

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    .line 776
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurSlideFracOnKeyguard:F

    .line 1682
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1694
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1693
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1702
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1703
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1710
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2629
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 2643
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideMuscicRunnable:Ljava/lang/Runnable;

    .line 3005
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    .line 3007
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterColorRunnable:Ljava/lang/Runnable;

    .line 3105
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3167
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3279
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3280
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3281
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3282
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3283
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3623
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3884
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4146
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4679
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4688
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 6185
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    .line 6408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastBackdropFrontAnimation:J

    .line 6451
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    .line 6482
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    .line 6776
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapsePanelsWithoutAnimation:Ljava/lang/Runnable;

    .line 307
    return-void
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 1798
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1799
    const v3, 0x7f0b03db

    .line 1798
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1800
    .local v2, "headsUpHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1801
    const/4 v1, -0x1

    .line 1802
    const/16 v3, 0x7de

    .line 1803
    const v4, 0x800328

    .line 1811
    const/4 v5, -0x3

    .line 1800
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1812
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1813
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1814
    const-string/jumbo v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1815
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1816
    const v1, 0x7f0c0122

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1755
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    return-void

    .line 1758
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1754
    return-void
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 4066
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4067
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 4068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 4065
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/high16 v3, 0x800000

    const/high16 v2, 0x20000

    const/4 v1, 0x0

    .line 2778
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v0, :cond_0

    .line 2779
    or-int/2addr p1, v3

    .line 2780
    or-int/2addr p1, v2

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 2783
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 2784
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_6

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 2786
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v0, :cond_4

    .line 2787
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 2786
    if-eqz v0, :cond_4

    .line 2788
    :cond_3
    or-int/2addr p1, v2

    .line 2789
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 2791
    or-int/2addr p1, v3

    .line 2794
    :cond_4
    return p1

    :cond_5
    move v0, v1

    .line 2783
    goto :goto_0

    .line 2784
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private animateCollapseNotificationPanelOnKeyguardShade(Z)V
    .locals 3
    .param p1, "dismissKeyguard"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 6290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 6291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 6293
    :cond_0
    if-eqz p1, :cond_3

    .line 6294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapseThenDismissKeyguardOnKeyguardShade(Z)V

    .line 6298
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail(Z)V

    .line 6301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->exitQsTilesEditMode(Z)V

    .line 6288
    :cond_2
    return-void

    .line 6296
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(Z)V

    goto :goto_0
.end method

.method private animateStatusBarHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2890
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2891
    if-nez p2, :cond_0

    .line 2892
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2893
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2894
    return-void

    .line 2896
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2898
    const-wide/16 v2, 0xa0

    .line 2896
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2899
    const-wide/16 v2, 0x0

    .line 2896
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2900
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 2896
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2901
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    .line 2896
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2889
    return-void
.end method

.method private animateStatusBarShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2913
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2914
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2915
    if-nez p2, :cond_0

    .line 2916
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2917
    return-void

    .line 2919
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2921
    const-wide/16 v2, 0x140

    .line 2919
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2922
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 2919
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2923
    const-wide/16 v2, 0x32

    .line 2919
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2928
    const/4 v1, 0x0

    .line 2919
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2931
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_1

    .line 2932
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2933
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 2932
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2934
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 2932
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2935
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 2932
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2912
    :cond_1
    return-void
.end method

.method private areLightsOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3689
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private awakenDreams()V
    .locals 2

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 1733
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private barMode(III)I
    .locals 3
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    const v2, 0x8001

    const/4 v0, 0x0

    .line 3589
    and-int v1, p1, p2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 3590
    :cond_1
    and-int v1, p1, p3

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 3591
    :cond_2
    and-int v1, p1, v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    .line 3592
    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 3593
    :cond_4
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3664
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3607
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 3608
    .local v1, "powerSave":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    .line 3609
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 3610
    .local v0, "anim":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_1

    .line 3611
    const/4 p1, 0x5

    .line 3613
    :cond_1
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3606
    return-void

    .line 3609
    .end local v0    # "anim":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "anim":Z
    goto :goto_0

    .line 3608
    .end local v0    # "anim":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "anim":Z
    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 3598
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 3599
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3601
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3602
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    .line 3601
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3597
    :cond_1
    return-void
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3675
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3676
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3677
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 3674
    :cond_0
    return-void
.end method

.method private clearAllNotifications(Z)V
    .locals 18
    .param p1, "isFilter"    # Z

    .prologue
    .line 1446
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1447
    .local v11, "stackScroller":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    :goto_0
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v9

    .line 1450
    .local v9, "numChildren":I
    const/4 v4, -0x1

    .line 1451
    .local v4, "firstVisibilityNotification":I
    const/4 v8, -0x1

    .line 1452
    .local v8, "lastVisibilityNotification":I
    const/4 v2, 0x0

    .line 1453
    .local v2, "canBeDismissedNum":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1455
    .local v10, "rect":Landroid/graphics/Rect;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1456
    .local v12, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v13, 0x0

    .line 1457
    .local v13, "visibleGutsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 1458
    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1459
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1460
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_2

    .line 1461
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    invoke-virtual {v3, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1464
    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1465
    const/4 v14, -0x1

    if-ne v4, v14, :cond_0

    .line 1466
    move v4, v2

    .line 1468
    :cond_0
    move v8, v2

    .line 1469
    instance-of v14, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_1

    move-object v14, v3

    .line 1470
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSettingShow()Z

    move-result v14

    .line 1469
    if-eqz v14, :cond_1

    .line 1471
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    if-eqz v14, :cond_1

    .line 1472
    int-to-double v14, v13

    .line 1473
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRowSettingHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1473
    div-float v16, v16, v17

    .line 1474
    const/high16 v17, 0x3f800000    # 1.0f

    .line 1473
    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 1472
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-int v13, v14

    .line 1477
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1457
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1446
    .end local v2    # "canBeDismissedNum":I
    .end local v4    # "firstVisibilityNotification":I
    .end local v5    # "i":I
    .end local v8    # "lastVisibilityNotification":I
    .end local v9    # "numChildren":I
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "stackScroller":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .end local v12    # "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "visibleGutsCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .restart local v11    # "stackScroller":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    goto :goto_0

    .line 1485
    .restart local v2    # "canBeDismissedNum":I
    .restart local v4    # "firstVisibilityNotification":I
    .restart local v5    # "i":I
    .restart local v8    # "lastVisibilityNotification":I
    .restart local v9    # "numChildren":I
    .restart local v10    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v13    # "visibleGutsCount":I
    :cond_4
    add-int v14, v8, v13

    .line 1486
    add-int/lit8 v15, v9, -0x1

    .line 1485
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1487
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1488
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1489
    return-void

    .line 1492
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1506
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;II)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearAllNotifications(Landroid/content/Context;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "sysui_clear_all_is_send"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1511
    .local v7, "isSend":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1512
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "meizu.intent.action.CLEAR_ALL_NOTIFICATIONS"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "sysui_clear_all_is_send"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1443
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_6
    return-void

    .line 1510
    .end local v7    # "isSend":Ljava/lang/Boolean;
    :cond_7
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3579
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3580
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3581
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3582
    const/4 v2, -0x1

    return v2

    .line 3584
    :cond_0
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4844
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_0

    return-void

    .line 4845
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4846
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_1

    .line 4847
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4843
    :cond_1
    return-void
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 4056
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 5

    .prologue
    .line 3087
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3088
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v2, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3089
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3090
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 3092
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v3}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3086
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    :goto_0
    return-void

    .line 3093
    .restart local v1    # "notification":Landroid/app/Notification;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3094
    const-string/jumbo v3, "PhoneStatusBar"

    const-string/jumbo v4, "converting a heads up to fullScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 3096
    const v4, 0x8ca3

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3098
    iget-object v3, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3099
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3616
    :cond_0
    return-void
.end method

.method private getCoveredBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isMusic"    # Z

    .prologue
    .line 6391
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->openLockMask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6393
    if-eqz p2, :cond_0

    .line 6394
    const v1, 0x3f19999a    # 0.6f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 6396
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v0

    .line 6398
    .local v0, "level":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6399
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 6400
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6401
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 6402
    :cond_2
    if-nez v0, :cond_3

    .line 6403
    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 6406
    .end local v0    # "level":I
    :cond_3
    return-object p1
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 4
    .param p0, "statusBarState"    # I
    .param p1, "keyguardShowing"    # Z
    .param p2, "keyguardOccluded"    # Z
    .param p3, "bouncerShowing"    # Z
    .param p4, "secure"    # Z
    .param p5, "currentlyInsecure"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4657
    and-int/lit16 v3, p0, 0xff

    .line 4658
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    shl-int/lit8 v2, v2, 0x8

    .line 4657
    or-int/2addr v3, v2

    .line 4659
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    shl-int/lit8 v2, v2, 0x9

    .line 4657
    or-int/2addr v3, v2

    .line 4660
    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    shl-int/lit8 v2, v2, 0xa

    .line 4657
    or-int/2addr v3, v2

    .line 4661
    if-eqz p4, :cond_3

    move v2, v0

    :goto_3
    shl-int/lit8 v2, v2, 0xb

    .line 4657
    or-int/2addr v2, v3

    .line 4662
    if-eqz p5, :cond_4

    :goto_4
    shl-int/lit8 v0, v0, 0xc

    .line 4657
    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    .line 4658
    goto :goto_0

    :cond_1
    move v2, v1

    .line 4659
    goto :goto_1

    :cond_2
    move v2, v1

    .line 4660
    goto :goto_2

    :cond_3
    move v2, v1

    .line 4661
    goto :goto_3

    :cond_4
    move v0, v1

    .line 4662
    goto :goto_4
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1777
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1779
    const/16 v3, 0x7e3

    .line 1780
    const v4, 0x840068

    .line 1786
    const/4 v5, -0x3

    move v2, v1

    .line 1777
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1788
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1789
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1792
    :cond_0
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1793
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1794
    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f0f01af

    .line 5508
    const/4 v6, 0x0

    .line 5509
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5510
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 5511
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_3

    .line 5528
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_6

    .line 5529
    const/4 v6, 0x1

    .line 5538
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 5539
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 5540
    .local v5, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 5541
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 5506
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_1
    return-void

    .line 5512
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5515
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_5

    .line 5516
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5518
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 5525
    :cond_4
    :goto_2
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    goto :goto_0

    .line 5543
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v8    # "time":J
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 5519
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_4

    .line 5520
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5523
    const/4 v6, 0x1

    goto :goto_2

    .line 5530
    .end local v8    # "time":J
    :cond_6
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5533
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5535
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 4719
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4718
    return-void
.end method

.method private hasActiveNotificationsAndShowLockScreenNotification()Z
    .locals 1

    .prologue
    .line 6411
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasThirdPartyNotificationItems()Z
    .locals 1

    .prologue
    .line 5955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->hasNotificationItems()Z

    move-result v0

    return v0
.end method

.method private hasThirdPartyOngoingItems()Z
    .locals 1

    .prologue
    .line 5958
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->hasOngoingItems()Z

    move-result v0

    return v0
.end method

.method private hasVisibleNotifications()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 4050
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    .line 4051
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    const-string/jumbo v0, "corrupt"

    return-object v0

    .line 4052
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5240
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5233
    return-void
.end method

.method private isKeyguardShadeMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6321
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isMusicPlaying()Z
    .locals 1

    .prologue
    .line 6444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz v0, :cond_0

    .line 6445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    return v0

    .line 6447
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedCustomNavigationBar()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 6927
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 6928
    .local v0, "activityManager":Landroid/app/IActivityManager;
    const-string/jumbo v4, ""

    .line 6929
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 6931
    .local v6, "stackInfo":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 6932
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    return v10

    .line 6933
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 6934
    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v7

    .line 6935
    .local v7, "stackList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    return v10

    .line 6936
    :cond_1
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$StackInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 6937
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6938
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUserApp(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 6939
    return v11

    .line 6941
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "stackList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v3

    .line 6944
    :cond_2
    :goto_0
    const-string/jumbo v8, "com.android.systemui"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6945
    return v10

    .line 6947
    :cond_3
    const-string/jumbo v8, "com.meizu.flyme.launcher"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6948
    return v11

    .line 6950
    :cond_4
    return v10

    .line 6942
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3895
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3896
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 3897
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3899
    :cond_0
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4610
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4611
    return-void

    .line 4614
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4616
    .local v1, "newlyVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 4618
    .local v2, "noLongerVisibleAr":[Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4609
    :goto_0
    return-void

    .line 4619
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private logStateToEventlog()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 4627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 4628
    .local v1, "isShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 4629
    .local v2, "isOccluded":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 4630
    .local v3, "isBouncerShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    .line 4631
    .local v4, "isSecure":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v5

    .line 4632
    .local v5, "isCurrentlyInsecure":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v12

    .line 4638
    .local v12, "stateFingerprint":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    if-eq v12, v0, :cond_0

    .line 4639
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 4640
    if-eqz v1, :cond_1

    move v7, v11

    .line 4641
    :goto_0
    if-eqz v2, :cond_2

    move v8, v11

    .line 4642
    :goto_1
    if-eqz v3, :cond_3

    move v9, v11

    .line 4643
    :goto_2
    if-eqz v4, :cond_4

    move v10, v11

    .line 4644
    :goto_3
    if-eqz v5, :cond_5

    .line 4639
    :goto_4
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 4645
    iput v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    .line 4626
    :cond_0
    return-void

    :cond_1
    move v7, v13

    .line 4640
    goto :goto_0

    :cond_2
    move v8, v13

    .line 4641
    goto :goto_1

    :cond_3
    move v9, v13

    .line 4642
    goto :goto_2

    :cond_4
    move v10, v13

    .line 4643
    goto :goto_3

    :cond_5
    move v11, v13

    .line 4644
    goto :goto_4
.end method

.method private mergeNotificationIcon(Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v7, 0x0

    .line 5928
    const/4 v2, 0x0

    .line 5929
    .local v2, "exist":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 5930
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5931
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 5932
    sub-int v5, v4, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5933
    .local v1, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    .line 5934
    return-void

    .line 5937
    :cond_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5938
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->icon:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-lez v5, :cond_1

    .line 5939
    if-nez v2, :cond_2

    .line 5940
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setVisible(Z)V

    .line 5941
    const/4 v2, 0x1

    .line 5931
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5943
    :cond_2
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setVisible(Z)V

    goto :goto_1

    .line 5927
    .end local v1    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    return-void
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    .line 1771
    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 3702
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3700
    :goto_0
    return-void

    .line 3703
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onLaunchTransitionTimeout()V
    .locals 1

    .prologue
    .line 4993
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4992
    return-void
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    .line 2346
    const/16 v1, -0x3e8

    .line 2345
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;II)V
    .locals 10
    .param p2, "firstVisibilityView"    # I
    .param p3, "lastVisibilityView"    # I
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
    .line 1521
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 1522
    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 1524
    :cond_1
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1538
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1543
    const/16 v7, 0x8c

    .line 1544
    .local v7, "currentDelay":I
    const/16 v3, 0xb4

    .line 1545
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1546
    .local v9, "numItems":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 1547
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1548
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1549
    .local v2, "endRunnable":Ljava/lang/Runnable;
    if-ne v8, p2, :cond_2

    .line 1550
    move-object v2, v6

    .line 1553
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_2
    if-gt v8, p3, :cond_3

    if-lt v8, p2, :cond_3

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1555
    add-int/lit8 v0, v7, -0xa

    const/16 v4, 0x32

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1556
    add-int/2addr v3, v7

    .line 1546
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1519
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1740
    return-void
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 750
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 751
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 748
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1838
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1839
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1840
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1841
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1842
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1839
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1837
    :cond_1
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1821
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    return-void

    .line 1764
    :cond_0
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4434
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4435
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 4436
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    .line 4434
    const/4 v4, 0x1

    .line 4433
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4430
    return-void
.end method

.method private restoreKeyguardWallpaper()V
    .locals 2

    .prologue
    .line 6586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6587
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_1

    .line 6590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6592
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->updateColors()V

    .line 6594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    .line 6596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    .line 6585
    return-void

    .line 6588
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3652
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3651
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4997
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5002
    .local v0, "r":Ljava/lang/Runnable;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5003
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4996
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 3

    .prologue
    .line 3234
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3235
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3238
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3233
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2621
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2622
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2623
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3669
    return-void
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4424
    :cond_0
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 5
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4441
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "showing"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " heads up window"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 4443
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v2

    .line 4444
    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 4442
    const v0, 0x8ca1

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4446
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 4447
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "notification key is null, do not show headsup view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    return-void

    .line 4441
    :cond_1
    const-string/jumbo v0, "hiding"

    goto :goto_0

    .line 4443
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    move v0, v2

    .line 4444
    goto :goto_2

    .line 4451
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 4452
    if-nez p1, :cond_5

    .line 4453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->disableBlur()V

    .line 4439
    :cond_5
    return-void

    .line 4451
    :cond_6
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3446
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3448
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3453
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3445
    return-void
.end method

.method private setThirdPartyNotifyIcon()V
    .locals 5

    .prologue
    .line 5950
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "notificationLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 5951
    .local v0, "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsGuestMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasThirdPartyNotificationItems()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasThirdPartyOngoingItems()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setThirdPartyNotifyIcon(ZZZ)V

    goto :goto_0

    .line 5949
    .end local v0    # "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    :cond_0
    return-void
.end method

.method private shouldIgnoreHeadsUpNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x1

    .line 6647
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-interface {v4}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6648
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-interface {v4, p1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 6647
    if-eqz v4, :cond_1

    .line 6649
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 6650
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "red-envelope assistant is enabled, ingore red-envelope headsup notification."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6652
    :cond_0
    return v6

    .line 6654
    :catch_0
    move-exception v0

    .line 6657
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->isNotificationReplyEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6658
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->supportReply(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 6657
    if-eqz v4, :cond_3

    .line 6659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->isNotificatoinOnReplying(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 6657
    if-eqz v4, :cond_3

    .line 6660
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 6661
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "this notification has the same info as the notification on replying, do not show headsup."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    :cond_2
    return v6

    .line 6666
    :cond_3
    const/4 v1, 0x0

    .line 6667
    .local v1, "ignore":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 6668
    .local v2, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v2, :cond_4

    .line 6669
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 6670
    .local v3, "oldNotification":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6671
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 6673
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 6674
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "coming is on-going notification, go on checking."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6696
    .end local v3    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    :cond_4
    :goto_0
    return v1

    .line 6676
    .restart local v3    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6678
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 6679
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 6680
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "coming is red-envelope, old is on-going, should not interrupt."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6682
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 6686
    :cond_7
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6687
    :cond_8
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 6688
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "coming is normal, old is on-going or red-envelope notification, should not interrupt."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    :cond_9
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showArtworkBitmap()V
    .locals 3

    .prologue
    .line 6512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6511
    :cond_0
    :goto_0
    return-void

    .line 6513
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getArtworkBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    .line 6514
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 6515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020220

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    .line 6518
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    .line 6519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmapForBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6523
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZ)V

    goto :goto_0

    .line 6520
    :catch_0
    move-exception v0

    .line 6521
    .local v0, "e":Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 5227
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 5226
    :cond_1
    return-void
.end method

.method private startGlyphRasterizeHack()V
    .locals 0

    .prologue
    .line 1565
    return-void
.end method

.method private startKeyguard()V
    .locals 4

    .prologue
    .line 1596
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1598
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1597
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1599
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1601
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 1595
    return-void
.end method

.method private startNotificationLogging()V
    .locals 2

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4596
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 4588
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 4592
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4584
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3661
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3658
    return-void
.end method

.method private updateAlwaysShowArea(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 6851
    const-string/jumbo v4, "resId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6852
    .local v1, "resId":I
    const-string/jumbo v4, "textColor"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6853
    .local v2, "textColor":I
    const-string/jumbo v4, "bgColor"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 6854
    .local v0, "bgColor":I
    const-string/jumbo v4, "tips"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6855
    .local v3, "tips":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->setNeedAutoColor(Z)V

    .line 6856
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6857
    if-nez v2, :cond_1

    .line 6858
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowTips:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6862
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->setBackgroundColor(I)V

    .line 6863
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowTips:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6864
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    .line 6850
    return-void

    :cond_0
    move v4, v5

    .line 6855
    goto :goto_0

    .line 6860
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowTips:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private updateClockSize()V
    .locals 3

    .prologue
    .line 4518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_0

    return-void

    .line 4519
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f00bc

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4520
    .local v0, "clock":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 4521
    const v1, 0x7f0b038c

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 4517
    :cond_1
    return-void
.end method

.method private updateColorFilter(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 3031
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterAnim:Z

    .line 3032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterColorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateColorFilter()V

    .line 3034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->setColor()V

    .line 3030
    return-void
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    .line 5132
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5135
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    .line 5136
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 5137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 5138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    .line 5139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    .line 5131
    return-void

    .line 5133
    :cond_1
    return-void

    .line 5135
    :cond_2
    const/4 v0, 0x0

    .local v0, "animate":Z
    goto :goto_0
.end method

.method private updateEmptyShadeView()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2365
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2366
    .local v0, "showEmptyShade":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setShadeEmpty(Z)V

    .line 2367
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveNotifications(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setFilterShadeEmpty(Z)V

    .line 2362
    return-void

    .line 2365
    .end local v0    # "showEmptyShade":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showEmptyShade":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 2366
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2367
    goto :goto_2
.end method

.method private updateKeyguardState(ZZ)V
    .locals 5
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 5105
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_1

    .line 5106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5112
    .end local p2    # "fromShadeLocked":Z
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v4, :cond_4

    .line 5113
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5117
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 5118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 5120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 5121
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 5122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 5123
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 5126
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZ)V

    .line 5127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 5128
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v2

    .line 5127
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 5104
    return-void

    .line 5109
    .restart local p2    # "fromShadeLocked":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 5110
    if-nez p1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v4, :cond_3

    :cond_2
    move p2, v0

    .line 5109
    .end local p2    # "fromShadeLocked":Z
    :cond_3
    invoke-virtual {v1, v3, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    goto :goto_0

    .line 5115
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    goto :goto_1
.end method

.method private updateNavigationBarBackgroundColor()V
    .locals 2

    .prologue
    .line 6907
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNeedCustomNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    .line 6906
    :goto_0
    return-void

    .line 6910
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateNotificationCountChange(Z)V
    .locals 4
    .param p1, "hasActiveNotifications"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5965
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    if-eqz v2, :cond_0

    .line 5966
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onNotificationCountChaned(Z)V

    .line 5968
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastHasNotification:Z

    if-eq v2, p1, :cond_3

    .line 5969
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastHasNotification:Z

    .line 5971
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZ)V

    .line 5972
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz v2, :cond_1

    .line 5973
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2, p1}, Lcom/meizu/media/music/KeyguardMusicController;->onNotificationChange(Z)V

    .line 5975
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {v2, v0, p1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->updateState(IZ)V

    .line 5977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->updateColors()V

    .line 5979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_2

    .line 5980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onNotificationCountChaned(Z)V

    .line 5983
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->onNotificationChange(Z)V

    .line 5964
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 5975
    goto :goto_0
.end method

.method private updateNotificationIcons()V
    .locals 5

    .prologue
    .line 2403
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "notificationLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 2404
    .local v0, "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;ZI)V

    goto :goto_0

    .line 2406
    .end local v0    # "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    .line 2402
    return-void
.end method

.method private updateNotificationShade()V
    .locals 34

    .prologue
    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    return-void

    .line 2115
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 2116
    new-instance v32, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 2122
    return-void

    .line 2126
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    .line 2129
    .local v17, "onKeyguard":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2130
    .local v5, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2131
    .local v28, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2132
    .local v29, "toShowFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    .local v27, "toRemoveFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2134
    .local v4, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_11

    .line 2135
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2138
    .local v7, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 2141
    .local v13, "isEncrypt":Z
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v31, v0

    .line 2145
    .local v31, "vis":I
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v32

    if-eqz v32, :cond_7

    const/4 v10, 0x0

    .line 2146
    .local v10, "hideSensitive":Z
    :goto_2
    if-nez v31, :cond_8

    const/16 v22, 0x1

    .line 2147
    .local v22, "sensitiveNote":Z
    :goto_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v23

    .line 2148
    .local v23, "sensitivePackage":Z
    if-eqz v22, :cond_2

    if-nez v10, :cond_9

    :cond_2
    move/from16 v21, v23

    .line 2149
    :goto_4
    if-eqz v21, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v25

    .line 2150
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2151
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 2154
    if-eqz v25, :cond_b

    .line 2155
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2162
    :cond_3
    :goto_6
    const/4 v9, 0x0

    .line 2163
    .local v9, "hideOnKeyguard":Z
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 2164
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v32, v0

    const/high16 v33, 0x4000000

    and-int v32, v32, v33

    if-eqz v32, :cond_c

    const/16 v24, 0x1

    .line 2165
    .local v24, "showInKeyguard":Z
    :goto_7
    if-nez v24, :cond_4

    .line 2166
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_d

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "playbackservice.status_tag"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 2167
    :goto_8
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v12

    .line 2168
    .local v12, "isClearable":Z
    if-nez v15, :cond_e

    if-eqz v12, :cond_e

    const/4 v9, 0x0

    .line 2174
    .end local v12    # "isClearable":Z
    .end local v24    # "showInKeyguard":Z
    :cond_4
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    move-object/from16 v32, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v18

    .line 2182
    .local v18, "privacyHide":Z
    if-nez v13, :cond_5

    if-eqz v9, :cond_f

    .line 2134
    :cond_5
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2126
    .end local v4    # "N":I
    .end local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9    # "hideOnKeyguard":Z
    .end local v10    # "hideSensitive":Z
    .end local v11    # "i":I
    .end local v13    # "isEncrypt":Z
    .end local v17    # "onKeyguard":Z
    .end local v18    # "privacyHide":Z
    .end local v22    # "sensitiveNote":Z
    .end local v23    # "sensitivePackage":Z
    .end local v27    # "toRemoveFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v28    # "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v29    # "toShowFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v31    # "vis":I
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "onKeyguard":Z
    goto/16 :goto_0

    .line 2145
    .restart local v4    # "N":I
    .restart local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v11    # "i":I
    .restart local v13    # "isEncrypt":Z
    .restart local v27    # "toRemoveFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v28    # "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .restart local v29    # "toShowFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .restart local v31    # "vis":I
    :cond_7
    const/4 v10, 0x1

    .restart local v10    # "hideSensitive":Z
    goto/16 :goto_2

    .line 2146
    :cond_8
    const/16 v22, 0x0

    .restart local v22    # "sensitiveNote":Z
    goto/16 :goto_3

    .line 2148
    .restart local v23    # "sensitivePackage":Z
    :cond_9
    const/16 v21, 0x1

    .local v21, "sensitive":Z
    goto/16 :goto_4

    .line 2149
    .end local v21    # "sensitive":Z
    :cond_a
    const/16 v25, 0x0

    .local v25, "showingPublic":Z
    goto/16 :goto_5

    .line 2157
    .end local v25    # "showingPublic":Z
    :cond_b
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto/16 :goto_6

    .line 2164
    .restart local v9    # "hideOnKeyguard":Z
    :cond_c
    const/16 v24, 0x0

    .restart local v24    # "showInKeyguard":Z
    goto :goto_7

    .line 2166
    :cond_d
    const/4 v15, 0x0

    .local v15, "isMeizuMusic":Z
    goto :goto_8

    .line 2168
    .end local v15    # "isMeizuMusic":Z
    .restart local v12    # "isClearable":Z
    :cond_e
    const/4 v9, 0x1

    goto :goto_9

    .line 2182
    .end local v12    # "isClearable":Z
    .end local v24    # "showInKeyguard":Z
    .restart local v18    # "privacyHide":Z
    :cond_f
    if-nez v18, :cond_5

    .line 2185
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 2186
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2188
    :cond_10
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2198
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9    # "hideOnKeyguard":Z
    .end local v10    # "hideSensitive":Z
    .end local v13    # "isEncrypt":Z
    .end local v18    # "privacyHide":Z
    .end local v22    # "sensitiveNote":Z
    .end local v23    # "sensitivePackage":Z
    .end local v31    # "vis":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/NotificationData;->getFakeEntries()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2199
    .local v3, "M":I
    const/4 v11, 0x0

    :goto_b
    if-ge v11, v3, :cond_1a

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/NotificationData;->getFakeEntries()Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2201
    .restart local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 2202
    .restart local v13    # "isEncrypt":Z
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v32

    if-eqz v32, :cond_14

    const/4 v8, 0x1

    .line 2204
    .local v8, "hasFakeEntry":Z
    :goto_c
    const/4 v9, 0x0

    .line 2205
    .restart local v9    # "hideOnKeyguard":Z
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 2206
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v32, v0

    const/high16 v33, 0x4000000

    and-int v32, v32, v33

    if-eqz v32, :cond_15

    const/16 v24, 0x1

    .line 2207
    .restart local v24    # "showInKeyguard":Z
    :goto_d
    if-nez v24, :cond_12

    .line 2208
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_16

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "playbackservice.status_tag"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 2209
    :goto_e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v12

    .line 2210
    .restart local v12    # "isClearable":Z
    if-nez v15, :cond_17

    if-eqz v12, :cond_17

    const/4 v9, 0x0

    .line 2215
    .end local v12    # "isClearable":Z
    .end local v24    # "showInKeyguard":Z
    :cond_12
    :goto_f
    if-eqz v13, :cond_13

    if-eqz v8, :cond_13

    .line 2219
    iget-boolean v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 2222
    .local v14, "isFake":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    move-object/from16 v32, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v18

    .line 2227
    .restart local v18    # "privacyHide":Z
    if-eqz v13, :cond_13

    if-eqz v14, :cond_13

    if-eqz v9, :cond_18

    .line 2199
    .end local v14    # "isFake":Z
    .end local v18    # "privacyHide":Z
    :cond_13
    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 2202
    .end local v8    # "hasFakeEntry":Z
    .end local v9    # "hideOnKeyguard":Z
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "hasFakeEntry":Z
    goto :goto_c

    .line 2206
    .restart local v9    # "hideOnKeyguard":Z
    :cond_15
    const/16 v24, 0x0

    .restart local v24    # "showInKeyguard":Z
    goto :goto_d

    .line 2208
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "isMeizuMusic":Z
    goto :goto_e

    .line 2210
    .end local v15    # "isMeizuMusic":Z
    .restart local v12    # "isClearable":Z
    :cond_17
    const/4 v9, 0x1

    goto :goto_f

    .line 2227
    .end local v12    # "isClearable":Z
    .end local v24    # "showInKeyguard":Z
    .restart local v14    # "isFake":Z
    .restart local v18    # "privacyHide":Z
    :cond_18
    if-nez v18, :cond_13

    .line 2230
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    move/from16 v32, v0

    if-nez v32, :cond_19

    .line 2231
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 2233
    :cond_19
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 2239
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "hasFakeEntry":Z
    .end local v9    # "hideOnKeyguard":Z
    .end local v13    # "isEncrypt":Z
    .end local v14    # "isFake":Z
    .end local v18    # "privacyHide":Z
    :cond_1a
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2240
    .local v26, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v11, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_1c

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2242
    .local v6, "child":Landroid/view/View;
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1b

    instance-of v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    .line 2243
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 2246
    .end local v6    # "child":Landroid/view/View;
    :cond_1c
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "remove$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2247
    .local v19, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_12

    .line 2249
    .end local v19    # "remove":Landroid/view/View;
    :cond_1d
    const/4 v11, 0x0

    :goto_13
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_1f

    .line 2250
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    .line 2251
    .local v30, "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-nez v32, :cond_1e

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2249
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 2258
    .end local v30    # "v":Landroid/view/View;
    :cond_1f
    const/16 v16, 0x0

    .line 2259
    .local v16, "j":I
    const/4 v11, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_20

    .line 2261
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_22

    .line 2282
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_29

    .line 2283
    const/4 v11, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_25

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2285
    .restart local v6    # "child":Landroid/view/View;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_21

    .line 2286
    instance-of v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v32, v0

    .line 2285
    if-eqz v32, :cond_21

    .line 2287
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 2264
    .end local v6    # "child":Landroid/view/View;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2265
    .restart local v6    # "child":Landroid/view/View;
    instance-of v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v32, v0

    if-nez v32, :cond_23

    .line 2259
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 2270
    :cond_23
    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    if-ne v6, v0, :cond_24

    .line 2272
    add-int/lit8 v16, v16, 0x1

    .line 2273
    goto :goto_16

    .line 2278
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2279
    add-int/lit8 v16, v16, 0x1

    goto :goto_16

    .line 2291
    .end local v6    # "child":Landroid/view/View;
    :cond_25
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_17
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_26

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2292
    .restart local v19    # "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_17

    .line 2295
    .end local v19    # "remove":Landroid/view/View;
    :cond_26
    const/4 v11, 0x0

    :goto_18
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_28

    .line 2296
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    .line 2297
    .restart local v30    # "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-nez v32, :cond_27

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2295
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 2301
    .end local v30    # "v":Landroid/view/View;
    :cond_28
    const/16 v16, 0x0

    .line 2304
    const/4 v11, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_29

    .line 2305
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_2b

    .line 2322
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2323
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSpeedbump()V

    .line 2324
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClearAll()V

    .line 2325
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateEmptyShadeView()V

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v32

    if-eqz v32, :cond_30

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    move/from16 v32, v0

    if-nez v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v32, v0

    if-nez v32, :cond_2e

    :cond_2a
    const/16 v32, 0x1

    .line 2330
    :goto_1a
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    .line 2335
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    .line 2340
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationCountChange(Z)V

    .line 2111
    return-void

    .line 2308
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2309
    .restart local v6    # "child":Landroid/view/View;
    instance-of v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v32, v0

    if-nez v32, :cond_2c

    .line 2304
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_19

    .line 2313
    :cond_2c
    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    if-ne v6, v0, :cond_2d

    .line 2314
    add-int/lit8 v16, v16, 0x1

    .line 2315
    goto :goto_1b

    .line 2318
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2319
    add-int/lit8 v16, v16, 0x1

    goto :goto_1b

    .line 2332
    .end local v6    # "child":Landroid/view/View;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v32

    if-eqz v32, :cond_2f

    const/16 v32, 0x0

    goto :goto_1a

    :cond_2f
    const/16 v32, 0x1

    goto :goto_1a

    .line 2330
    :cond_30
    const/16 v32, 0x0

    goto/16 :goto_1a
.end method

.method private updatePublicMode()V
    .locals 2

    .prologue
    .line 5100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v0

    .line 5100
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 5099
    return-void

    .line 5100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2108
    const v1, 0x7f100028

    .line 2107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 2106
    return-void
.end method

.method private updateSmartTouch(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 6423
    invoke-static {}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->getInstanse()Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    move-result-object v0

    .line 6424
    .local v0, "instanse":Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    if-eqz v0, :cond_0

    .line 6425
    invoke-virtual {v0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6422
    :cond_0
    return-void
.end method

.method private updateSpeedbump()V
    .locals 8

    .prologue
    .line 2371
    const/4 v5, -0x1

    .line 2372
    .local v5, "speedbumpIndex":I
    const/4 v2, 0x0

    .line 2373
    .local v2, "currentIndex":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 2374
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2375
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2376
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2377
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 2378
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v7, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v6

    .line 2377
    if-eqz v6, :cond_1

    .line 2379
    move v5, v2

    .line 2384
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(I)V

    .line 2370
    return-void

    .line 2382
    .restart local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2375
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateSuperPowerSaveModeChange()V
    .locals 8

    .prologue
    const v7, 0x7f0f023f

    const v6, 0x7f0f00df

    const/4 v5, 0x0

    .line 6226
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 6227
    .local v1, "dateVisibility":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    .line 6229
    .local v2, "othersVisibility":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6230
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowKeyguardClock:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    .line 6231
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6232
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6233
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v3, v2}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setVisibility(I)V

    .line 6234
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryViewKeyguard:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v3, v2}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setVisibility(I)V

    .line 6235
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setHidePercentAnyWay(Z)V

    .line 6236
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryViewKeyguard:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setHidePercentAnyWay(Z)V

    .line 6237
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setHideAnyWay(Z)V

    .line 6238
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    .line 6239
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 6242
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 6244
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6245
    .local v0, "dateStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 6246
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Landroid/view/View;

    .line 6248
    .end local v0    # "dateStub":Landroid/view/ViewStub;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateViewKeyguard:Landroid/view/View;

    if-nez v3, :cond_2

    .line 6250
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6251
    .restart local v0    # "dateStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 6252
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateViewKeyguard:Landroid/view/View;

    .line 6254
    .end local v0    # "dateStub":Landroid/view/ViewStub;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6255
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateViewKeyguard:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6256
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 6257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 6225
    return-void

    .line 6226
    .end local v1    # "dateVisibility":I
    .end local v2    # "othersVisibility":I
    :cond_3
    const/16 v1, 0x8

    .restart local v1    # "dateVisibility":I
    goto/16 :goto_0

    .line 6227
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "othersVisibility":I
    goto :goto_1
.end method

.method private updateUnlockText()V
    .locals 1

    .prologue
    .line 6432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_0

    .line 6433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->changeUnlockTextLanguage()V

    .line 6431
    :cond_0
    return-void
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3683
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3904
    const-string/jumbo v1, ") "

    .line 3903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3904
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3904
    const-string/jumbo v1, "x"

    .line 3903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3904
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3904
    const-string/jumbo v1, "]"

    .line 3903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1850
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1851
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1852
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1853
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 1852
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1855
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1856
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1857
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 1856
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1859
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1860
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsHolster:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1861
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 1860
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    .line 1847
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 13
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1892
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNotification key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->putNotification(Ljava/lang/String;)V

    .line 1894
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1895
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "PhoneStatusBar"

    const-string/jumbo v8, "launching notification in heads up mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_1
    new-instance v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v5, p1, v10}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1897
    .local v5, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1898
    .local v3, "holder":Landroid/view/ViewGroup;
    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1900
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 1902
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-static {v7, v8, p1, v11}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    .line 1905
    return-void

    .line 1909
    .end local v3    # "holder":Landroid/view/ViewGroup;
    .end local v5    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    .line 1910
    .local v6, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v6, :cond_3

    .line 1911
    return-void

    .line 1915
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v7}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1932
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1933
    invoke-virtual {p0, p1, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1936
    :cond_5
    :goto_0
    invoke-virtual {p0, v6, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1943
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1944
    .local v1, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v1, :cond_6

    .line 1945
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1946
    .local v2, "fakeRow":Landroid/view/View;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateFakeVetoButton(Landroid/view/View;Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateFakeEntryCounts(Ljava/lang/String;)V

    .line 1952
    .end local v2    # "fakeRow":Landroid/view/View;
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1953
    const/16 v7, -0x2710

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1961
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v7

    if-lt v7, v12, :cond_7

    .line 1962
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getVisible3rdPartyAppNotiCounts()I

    move-result v7

    if-lt v7, v12, :cond_7

    .line 1963
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "meizu.intent.action.TOO_MUCH_NOTIFICATIONS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1965
    const-string/jumbo v7, "PhoneStatusBar"

    const-string/jumbo v8, "TOO_MANY_NOTIFICATIONS Broadcast sent!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v7, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v7, v7, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v7, :cond_a

    .line 1973
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v9, -0x1

    invoke-static {v7, v8, p1, v9}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    .line 1891
    :goto_1
    return-void

    .line 1918
    .end local v1    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1921
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "PhoneStatusBar"

    const-string/jumbo v8, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 1923
    const v8, 0x8ca2

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1925
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1926
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto/16 :goto_0

    .line 1975
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v1    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v9, 0x0

    invoke-static {v7, v8, p1, v9}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    goto :goto_1
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 5875
    if-eqz p1, :cond_1

    .line 5876
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 5877
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mergeNotificationIcon(Landroid/service/notification/StatusBarNotification;)V

    .line 5878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5885
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 5874
    :cond_1
    return-void

    .line 5880
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-nez v0, :cond_0

    .line 5881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->add(Ljava/lang/String;Z)V

    .line 5882
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setThirdPartyNotifyIcon()V

    goto :goto_0
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4932
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3163
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 3178
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3183
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZ)V

    .line 3182
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "anim"    # Z

    .prologue
    const/16 v4, 0x403

    const/16 v3, 0x3fc

    const/4 v2, 0x0

    .line 3187
    if-nez p2, :cond_3

    .line 3188
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3189
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3193
    return-void

    .line 3195
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseNotificationPanelOnKeyguardShade(Z)V

    .line 3198
    :cond_2
    return-void

    .line 3206
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_4

    .line 3207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3213
    :cond_4
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5

    .line 3214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3218
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_6

    .line 3225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail(Z)V

    .line 3186
    :cond_6
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3330
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3329
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 3290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3291
    return-void

    .line 3295
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->forceShowStatusBarWindow()V

    .line 3299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_1

    .line 3300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 3304
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasVisibleNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3288
    :goto_0
    return-void

    .line 3307
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 1

    .prologue
    .line 3317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3318
    return-void

    .line 3322
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    .line 3324
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    .line 3315
    return-void
.end method

.method public animateHidingKeyguardBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x180

    .line 6528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 6529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6530
    const/4 v1, 0x0

    .line 6529
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 6529
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6533
    const-wide/16 v2, 0x0

    .line 6529
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6534
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$60;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$60;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 6529
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 6547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6547
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6527
    :cond_0
    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3478
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 5071
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clearAllNotificationsAndNoAnimation(Z)V
    .locals 1
    .param p1, "isFilter"    # Z

    .prologue
    .line 6713
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllFakes()V

    .line 6714
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onClearAllNotifications(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6711
    :goto_0
    return-void

    .line 6715
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 4062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 4061
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 2942
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4758
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 4759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 4760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4761
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 4763
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4765
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 4767
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 4768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4769
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4771
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4757
    return-void
.end method

.method public disable(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 2801
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    .line 2802
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 2803
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2804
    .local v2, "old":I
    xor-int v0, p1, v2

    .line 2805
    .local v0, "diff":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2807
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2808
    const-string/jumbo v4, "PhoneStatusBar"

    const-string/jumbo v5, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 2809
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 2808
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2813
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    const-string/jumbo v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    const-string/jumbo v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    const-string/jumbo v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    const-string/jumbo v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string/jumbo v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string/jumbo v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_f

    const-string/jumbo v4, "SYSTEM_INFO"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const-string/jumbo v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string/jumbo v4, "BACK"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string/jumbo v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_13

    const-string/jumbo v4, "HOME"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string/jumbo v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_15

    const-string/jumbo v4, "RECENT"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    const-string/jumbo v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-eqz v4, :cond_17

    const-string/jumbo v4, "CLOCK"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    const-string/jumbo v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_19

    const-string/jumbo v4, "SEARCH"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    const-string/jumbo v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    const-string/jumbo v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 2836
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2837
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1b

    .line 2838
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 2844
    :cond_1
    :goto_12
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 2845
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-nez v4, :cond_1c

    const/4 v3, 0x1

    .line 2846
    .local v3, "show":Z
    :goto_13
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 2848
    .end local v3    # "show":Z
    :cond_2
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 2849
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_3

    .line 2850
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2854
    :cond_3
    const/high16 v4, 0x3600000

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    .line 2859
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 2861
    :cond_4
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_5

    .line 2863
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2864
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2868
    :cond_5
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 2869
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1d

    .line 2870
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_6

    .line 2871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 2873
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 2879
    :cond_7
    :goto_14
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    .line 2881
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    .line 2880
    :goto_15
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 2882
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2800
    :cond_8
    return-void

    .line 2814
    :cond_9
    const-string/jumbo v4, "expand"

    goto/16 :goto_0

    .line 2815
    :cond_a
    const-string/jumbo v4, " "

    goto/16 :goto_1

    .line 2816
    :cond_b
    const-string/jumbo v4, "icons"

    goto/16 :goto_2

    .line 2817
    :cond_c
    const-string/jumbo v4, " "

    goto/16 :goto_3

    .line 2818
    :cond_d
    const-string/jumbo v4, "alerts"

    goto/16 :goto_4

    .line 2819
    :cond_e
    const-string/jumbo v4, " "

    goto/16 :goto_5

    .line 2820
    :cond_f
    const-string/jumbo v4, "system_info"

    goto/16 :goto_6

    .line 2821
    :cond_10
    const-string/jumbo v4, " "

    goto/16 :goto_7

    .line 2822
    :cond_11
    const-string/jumbo v4, "back"

    goto/16 :goto_8

    .line 2823
    :cond_12
    const-string/jumbo v4, " "

    goto/16 :goto_9

    .line 2824
    :cond_13
    const-string/jumbo v4, "home"

    goto/16 :goto_a

    .line 2825
    :cond_14
    const-string/jumbo v4, " "

    goto/16 :goto_b

    .line 2826
    :cond_15
    const-string/jumbo v4, "recent"

    goto/16 :goto_c

    .line 2827
    :cond_16
    const-string/jumbo v4, " "

    goto/16 :goto_d

    .line 2828
    :cond_17
    const-string/jumbo v4, "clock"

    goto/16 :goto_e

    .line 2829
    :cond_18
    const-string/jumbo v4, " "

    goto/16 :goto_f

    .line 2830
    :cond_19
    const-string/jumbo v4, "search"

    goto/16 :goto_10

    .line 2831
    :cond_1a
    const-string/jumbo v4, " "

    goto/16 :goto_11

    .line 2840
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_12

    .line 2845
    :cond_1c
    const/4 v3, 0x0

    .restart local v3    # "show":Z
    goto/16 :goto_13

    .line 2875
    .end local v3    # "show":Z
    :cond_1d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto :goto_14

    .line 2881
    :cond_1e
    const/4 v4, 0x0

    goto :goto_15
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 4359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 4358
    :goto_0
    return-void

    .line 4362
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method public dismissOrShowSecurity()V
    .locals 0

    .prologue
    .line 5783
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 5782
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4780
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 4781
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 4782
    const-string/jumbo v10, "sysui_demo_allowed"

    .line 4781
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 4784
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_2

    return-void

    :cond_1
    move v7, v9

    .line 4781
    goto :goto_0

    .line 4785
    :cond_2
    const-string/jumbo v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4786
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4794
    :cond_3
    :goto_1
    const-string/jumbo v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string/jumbo v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4799
    :goto_2
    if-nez v3, :cond_4

    const-string/jumbo v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4800
    :cond_4
    const v7, 0x7f0f00bc

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4802
    :cond_5
    if-nez v3, :cond_6

    const-string/jumbo v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4803
    :cond_6
    const v7, 0x7f0f0052

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4805
    :cond_7
    if-nez v3, :cond_8

    const-string/jumbo v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4806
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v7, :cond_9

    .line 4807
    new-instance v7, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 4809
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4811
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_c

    if-nez v3, :cond_b

    const-string/jumbo v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4812
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4814
    :cond_c
    if-nez v3, :cond_d

    const-string/jumbo v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4815
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_14

    const/4 v4, 0x0

    .line 4817
    :goto_3
    if-eqz v4, :cond_e

    .line 4818
    const-string/jumbo v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4819
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_15

    const-string/jumbo v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v5, 0x4

    .line 4820
    .local v5, "vis":I
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4823
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_e
    const-string/jumbo v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4824
    const-string/jumbo v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4825
    .local v2, "mode":Ljava/lang/String;
    const-string/jumbo v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v1, 0x0

    .line 4831
    .local v1, "barMode":I
    :goto_5
    const/4 v7, -0x1

    if-eq v1, v7, :cond_10

    .line 4832
    const/4 v0, 0x1

    .line 4833
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_f

    .line 4834
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4836
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_10

    .line 4837
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4779
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    :cond_10
    return-void

    .line 4787
    :cond_11
    const-string/jumbo v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4788
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4789
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_1

    .line 4790
    :cond_12
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_3

    .line 4792
    const-string/jumbo v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4794
    :cond_13
    const/4 v3, 0x1

    .local v3, "modeChange":Z
    goto/16 :goto_2

    .line 4816
    .end local v3    # "modeChange":Z
    :cond_14
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0f01cd

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, "notifications":Landroid/view/View;
    goto :goto_3

    .line 4819
    .end local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    .restart local v5    # "vis":I
    goto :goto_4

    .line 4826
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_16
    const-string/jumbo v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x2

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4827
    .end local v1    # "barMode":I
    :cond_17
    const-string/jumbo v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x1

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4828
    .end local v1    # "barMode":I
    :cond_18
    const-string/jumbo v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x4

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4829
    .end local v1    # "barMode":I
    :cond_19
    const-string/jumbo v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x5

    .restart local v1    # "barMode":I
    goto :goto_5

    .line 4830
    .end local v1    # "barMode":I
    :cond_1a
    const/4 v1, -0x1

    .restart local v1    # "barMode":I
    goto :goto_5
.end method

.method public displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 1981
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1982
    .local v0, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1983
    return-void

    .line 1985
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 1987
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1989
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1990
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1980
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3908
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3909
    :try_start_0
    const-string/jumbo v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3911
    const-string/jumbo v7, ", mTrackingPosition="

    .line 3910
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3911
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 3910
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mTickerEnabled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3913
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v5, :cond_0

    .line 3914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3917
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3918
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mStackScroller: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  mStackScroller: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3921
    const-string/jumbo v7, " scroll "

    .line 3920
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3921
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v7

    .line 3920
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3922
    const-string/jumbo v7, ","

    .line 3920
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3922
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v7

    .line 3920
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 3925
    const-string/jumbo v5, "  mInteractingWindows="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3926
    const-string/jumbo v5, "  mStatusBarWindowState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3927
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v5}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3928
    const-string/jumbo v5, "  mStatusBarMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    const-string/jumbo v5, "  mDozing="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3931
    const-string/jumbo v5, "  mZenMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3932
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v5}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    const-string/jumbo v5, "  mUseHeadsUp="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3934
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3935
    const-string/jumbo v5, "  interrupting package: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    const-string/jumbo v5, "mStatusBarView"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3938
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v5, :cond_1

    .line 3939
    const-string/jumbo v5, "  mNavigationBarWindowState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3940
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v5}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
    const-string/jumbo v5, "  mNavigationBarMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3942
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    const-string/jumbo v5, "mNavigationBarView"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3946
    :cond_1
    const-string/jumbo v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3947
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_5

    .line 3948
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    :goto_0
    const-string/jumbo v5, "  mMediaSessionManager="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3954
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3955
    const-string/jumbo v5, "  mMediaNotificationKey="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3956
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    const-string/jumbo v5, "  mMediaController="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3958
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3959
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_2

    .line 3960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3962
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3963
    const-string/jumbo v5, "  mMediaMetadata="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3964
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3965
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v5, :cond_3

    .line 3966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v7, "android.media.metadata.TITLE"

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3968
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3970
    const-string/jumbo v5, "  Panels: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v5, :cond_4

    .line 3972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    mNotificationPanel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3973
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3972
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3973
    const-string/jumbo v6, " params="

    .line 3972
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3973
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3972
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    const-string/jumbo v5, "      "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3975
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3978
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 3981
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    .line 3982
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string/jumbo v7, "  "

    invoke-virtual {v5, p2, v7}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 3985
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3986
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 3988
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 3989
    .local v4, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3908
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3950
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3981
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4012
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v5, :cond_7

    .line 4013
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4015
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-eqz v5, :cond_8

    .line 4016
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4018
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    if-eqz v5, :cond_9

    .line 4019
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4021
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v5, :cond_a

    .line 4022
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4024
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v5, :cond_b

    .line 4025
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4027
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    if-eqz v5, :cond_c

    .line 4028
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4030
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v5, :cond_d

    .line 4031
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4033
    :cond_d
    const-string/jumbo v5, "SharedPreferences:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4035
    const/4 v7, 0x0

    .line 4034
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4036
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string/jumbo v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 4039
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_e
    const-string/jumbo v5, "  mNotificationPanel="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4040
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-nez v5, :cond_f

    .line 4041
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mGameMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isGameMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mGameModeDNDOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isGameModeDNDEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3907
    return-void

    .line 4043
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4950
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4951
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4952
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 4975
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4976
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 4949
    :goto_0
    return-void

    .line 4978
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 21

    .prologue
    .line 2509
    const/4 v11, 0x0

    .line 2511
    .local v11, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2512
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v6

    .line 2513
    .local v6, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2514
    .local v3, "N":I
    const/4 v10, 0x0

    .line 2515
    .local v10, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v7, 0x0

    .line 2516
    .local v7, "controller":Landroid/media/session/MediaController;
    const/4 v9, 0x0

    .end local v7    # "controller":Landroid/media/session/MediaController;
    .end local v10    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_1

    .line 2517
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2518
    .local v8, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2519
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    .line 2520
    const-string/jumbo v19, "android.mediaSession"

    .line 2519
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/media/session/MediaSession$Token;

    .line 2521
    .local v16, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v16, :cond_0

    .line 2522
    new-instance v7, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2523
    .local v7, "controller":Landroid/media/session/MediaController;
    if-eqz v7, :cond_0

    .line 2525
    move-object v10, v8

    .line 2516
    .end local v7    # "controller":Landroid/media/session/MediaController;
    .end local v16    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2531
    .end local v8    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    if-nez v10, :cond_4

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    .line 2539
    const/16 v19, 0x0

    .line 2540
    const/16 v20, -0x1

    .line 2538
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v14

    .line 2542
    .local v14, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "aController$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    :sswitch_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 2543
    .local v4, "aController":Landroid/media/session/MediaController;
    if-eqz v4, :cond_2

    .line 2544
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v15

    .line 2545
    .local v15, "state":Landroid/media/session/PlaybackState;
    if-eqz v15, :cond_2

    .line 2546
    invoke-virtual {v15}, Landroid/media/session/PlaybackState;->getState()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 2552
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2554
    .local v13, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_2

    .line 2555
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2556
    .restart local v8    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2561
    move-object v7, v4

    .line 2562
    .restart local v7    # "controller":Landroid/media/session/MediaController;
    move-object v10, v8

    .line 2563
    .local v10, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_1

    .line 2554
    .end local v7    # "controller":Landroid/media/session/MediaController;
    .end local v10    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2571
    .end local v4    # "aController":Landroid/media/session/MediaController;
    .end local v5    # "aController$iterator":Ljava/util/Iterator;
    .end local v8    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v15    # "state":Landroid/media/session/PlaybackState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2578
    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2588
    if-nez v10, :cond_7

    .line 2589
    const/4 v12, 0x0

    .line 2592
    :goto_3
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_8

    .line 2605
    :goto_4
    const/4 v11, 0x1

    :cond_6
    monitor-exit v18

    .line 2617
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZ)V

    .line 2508
    return-void

    .line 2590
    :cond_7
    :try_start_1
    iget-object v0, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    .local v12, "notificationKey":Ljava/lang/String;
    goto :goto_3

    .line 2598
    .end local v12    # "notificationKey":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2511
    .end local v3    # "N":I
    .end local v6    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v9    # "i":I
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 2601
    .restart local v3    # "N":I
    .restart local v6    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v9    # "i":I
    :cond_9
    const/16 v17, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2602
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 2546
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .prologue
    .line 5096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5095
    return-void
.end method

.method public forceShowStatusBarWindow()V
    .locals 3

    .prologue
    .line 6559
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6560
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6558
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 4855
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    .prologue
    .line 4101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getHolsterStatusBarView()Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;
    .locals 1

    .prologue
    .line 6415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5432
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5436
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5333
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;
    .locals 1

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationReplyManager:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    return-object v0
.end method

.method public getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 6902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getSingle(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method

.method public getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;
    .locals 1

    .prologue
    .line 5829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    return-object v0
.end method

.method public getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1619
    const/4 v6, 0x0

    .line 1620
    .local v6, "opaque":Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1627
    if-eqz v6, :cond_1

    move v5, v1

    .line 1623
    :goto_0
    const/16 v3, 0x7e8

    .line 1624
    const v4, 0x820100

    move v2, v1

    .line 1620
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1628
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1629
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1631
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1632
    const-string/jumbo v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1633
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1635
    return-object v0

    .line 1627
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1674
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1675
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1677
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1676
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1679
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarViewForHolster()Landroid/view/View;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getVisible3rdPartyAppNotiCounts()I
    .locals 6

    .prologue
    .line 5858
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 5859
    .local v0, "N":I
    const/4 v1, 0x0

    .line 5860
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5861
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 5862
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f0003

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 5863
    .local v3, "internal":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "internal":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5860
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5864
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5868
    :cond_2
    return v1
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5416
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5418
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5419
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->onGoToKeyguard()V

    .line 5415
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 6
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5390
    const/4 v1, 0x0

    .line 5391
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 5392
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5393
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5395
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5396
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 5397
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 5398
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5399
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 5400
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5409
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->onGoToLockedShade()V

    .line 5389
    return-void

    .line 5395
    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "fullShadeNeedsBouncer":Z
    goto :goto_0

    .line 5396
    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "fullShadeNeedsBouncer":Z
    goto :goto_0

    .line 5402
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5403
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5404
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5405
    if-eqz v1, :cond_1

    .line 5406
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    goto :goto_1
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 4697
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v0, :cond_0

    .line 4698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->halt()V

    .line 4696
    :cond_0
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 0
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 4575
    if-eqz p1, :cond_0

    .line 4576
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 4577
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLogging()V

    .line 4574
    :goto_0
    return-void

    .line 4579
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    .line 4580
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    goto :goto_0
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 5604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasVisibleNotifications()Z

    move-result v0

    return v0
.end method

.method public hideAlwaysTextAndIcon(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 6811
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6812
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v6, 0x7f06000d

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6813
    .local v0, "animOut":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6814
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6815
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentPackageName:Ljava/lang/String;

    .line 6816
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeView(Landroid/view/View;)V

    .line 6817
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6818
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 6819
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6810
    .end local v0    # "animOut":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 6821
    .restart local v0    # "animOut":Landroid/view/animation/Animation;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6822
    .local v4, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 6823
    .local v3, "info":Landroid/os/Bundle;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6824
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6825
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 6826
    .local v3, "info":Landroid/os/Bundle;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentPackageName:Ljava/lang/String;

    .line 6828
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "info":Landroid/os/Bundle;
    :cond_2
    move-object v2, v3

    .line 6829
    .local v2, "finalInfo":Landroid/os/Bundle;
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Bundle;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6845
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method hideBackgroundFrameBeforePreHideAnimation()V
    .locals 2

    .prologue
    .line 6564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 6565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6563
    :cond_0
    return-void
.end method

.method public hideKeyguard()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 5011
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5012
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5013
    .local v2, "staying":Z
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5014
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v3, :cond_6

    .line 5015
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5016
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5017
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 5018
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5019
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5024
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5025
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onCameraStateChange(Z)V

    .line 5028
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_1

    .line 5029
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 5031
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 5032
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v3, v4}, Lcom/meizu/media/music/KeyguardMusicController;->onHideKeyguard(Z)V

    .line 5034
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onHideKeyguard()V

    .line 5035
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-nez v3, :cond_7

    .line 5037
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 5038
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5040
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetSmartLockFlag()V

    .line 5045
    :cond_3
    :goto_1
    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onKeyguardChange(Z)V

    .line 5049
    invoke-static {v6}, Lcom/android/systemui/recents/Recents;->onKeyguardChange(Z)V

    .line 5053
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-interface {v3}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5054
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-interface {v3}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->quickClickRedEnvelopeNotificationMode()Z

    move-result v3

    .line 5053
    if-eqz v3, :cond_5

    .line 5055
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5053
    if-eqz v3, :cond_5

    .line 5056
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5057
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5058
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "hint_unlock"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5059
    invoke-static {}, Lcom/android/systemui/recents/Recents;->disableAnimationScale()V

    .line 5060
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performClick()Z

    .line 5061
    const-string/jumbo v3, "PhoneStatusBar"

    const-string/jumbo v4, "unlock manually then click red-envelope assistant automatically."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    return v2

    .line 5022
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto/16 :goto_0

    .line 5041
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 5042
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->restoreKeyguardWallpaper()V

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 5560
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5561
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5562
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 5558
    return-void
.end method

.method public interceptHomeKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5775
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "home_double_click"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5776
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5777
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController;->interceptHomeKey(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 5779
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5170
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 5170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3424
    return v3

    .line 3428
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v1, :cond_2

    .line 3430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 3431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 3432
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_5

    .line 3435
    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3438
    .end local v0    # "upOrCancel":Z
    :cond_2
    :goto_1
    return v4

    .line 3430
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "upOrCancel":Z
    goto :goto_0

    .line 3431
    .end local v0    # "upOrCancel":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "upOrCancel":Z
    goto :goto_0

    .line 3433
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public isChargingViewShow()Z
    .locals 1

    .prologue
    .line 6759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->isChargingViewVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 4929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2977
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2971
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    .line 2972
    .local v1, "onKeyguard":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v0

    .line 2973
    .local v0, "isCurrentlyInsecure":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    :cond_0
    :goto_1
    return v2

    .line 2971
    .end local v0    # "isCurrentlyInsecure":Z
    .end local v1    # "onKeyguard":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "onKeyguard":Z
    goto :goto_0

    .line 2973
    .restart local v0    # "isCurrentlyInsecure":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 2959
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 4937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    .line 4937
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 5089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isMusicViewShow()Z
    .locals 1

    .prologue
    .line 6763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicViewShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    return v0
.end method

.method public isScreenOnComingFromTouch()Z
    .locals 1

    .prologue
    .line 2967
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    return v0
.end method

.method public isScreenOnFromKeyguard()Z
    .locals 1

    .prologue
    .line 6440
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 2986
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isStatusBarExpanded()Z
    .locals 1

    .prologue
    .line 6609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyExpandedOnKeyguardShade()Z

    move-result v0

    .line 6609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 6915
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemUpdateApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 6919
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 6923
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSystemUpdateApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4525
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4528
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050017

    .line 4527
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4531
    const v3, 0x105001b

    .line 4530
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4533
    .local v1, "newIconSize":I
    const v3, 0x7f0b0393

    .line 4532
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4535
    .local v0, "newIconHPadding":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 4537
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 4538
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 4542
    :cond_1
    const v3, 0x7f0b0373

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 4544
    const v3, 0x7f10005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4545
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 4546
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4549
    :cond_2
    const v3, 0x7f0b03a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 4550
    const v3, 0x7f0b039f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    .line 4552
    const v3, 0x7f0b03a7

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4553
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 4554
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4557
    :cond_4
    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 4558
    const v3, 0x7f0b038d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 4559
    const v3, 0x7f0b038e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 4561
    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4563
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "PhoneStatusBar"

    const-string/jumbo v4, "updateResources"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3339
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    .line 3340
    :cond_0
    return-void

    .line 3344
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3348
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3350
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 3351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3355
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_4

    .line 3357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3358
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3368
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 3371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 3372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3375
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3379
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v3, :cond_6

    .line 3380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isWallpaperStart()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setAlpha(F)V

    .line 3399
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3400
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 3335
    :cond_7
    return-void

    .line 3384
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3392
    const-wide/16 v2, 0x10

    .line 3384
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3119
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeOnAllPanelsCollapsedRunnable()V

    .line 3126
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3130
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 3132
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3139
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3141
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isWallpaperStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setAlpha(F)V

    .line 3160
    :goto_2
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3117
    return-void

    .line 3120
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 3141
    goto :goto_0

    :cond_5
    move v2, v1

    .line 3143
    goto :goto_1

    .line 3149
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3157
    const-wide/16 v4, 0x10

    .line 3149
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 58

    .prologue
    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    .line 845
    .local v31, "context":Landroid/content/Context;
    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    .line 847
    .local v45, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 850
    const v3, 0x105001b

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 853
    const v3, 0x7f0400c5

    const/4 v4, 0x0

    .line 852
    move-object/from16 v0, v31

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0232

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-nez v3, :cond_0

    .line 870
    new-instance v3, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 872
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getHolsterHeader()Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterHeader:Landroid/widget/LinearLayout;

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f023c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackMoreArea:Landroid/widget/RelativeLayout;

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0285

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 878
    .local v38, "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 881
    const v4, 0x7f0f0240

    .line 880
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setShowLockscreenNotifications(Z)V

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEnablePullDownOnKeyguard:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEnablePullDownOnKeyguard(Z)V

    .line 888
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 891
    const v7, 0x7f0a00c2

    .line 890
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 895
    :cond_1
    const v3, 0x7f040008

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 894
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 905
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 908
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v48

    .line 909
    .local v48, "showNav":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasNavigationBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_2
    if-eqz v48, :cond_3

    .line 912
    const v3, 0x7f040086

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 911
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 917
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 916
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 938
    .end local v48    # "showNav":Z
    :cond_3
    :goto_0
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0237

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0238

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f023a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getHolsterStatusIcons()Landroid/widget/LinearLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsHolster:Landroid/widget/LinearLayout;

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f01ce

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f01cd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 946
    .local v40, "mNotificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setInKeyguard(Z)V

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getNotificationIconArea()Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    move-result-object v41

    .line 948
    .local v41, "mNotificationLayoutHolster":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setInKeyguard(Z)V

    .line 949
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setGroup(I)V

    .line 950
    const/4 v3, 0x2

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setGroup(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    move-object/from16 v0, v40

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    move-object/from16 v0, v41

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f01d1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0235

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0234

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 958
    const v4, 0x7f0f0247

    .line 957
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f01b7

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f01bc

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v4, 0x7f0f01ba

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 974
    .local v33, "dismissFilterBtn":Landroid/view/View;
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissButton(Landroid/view/View;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v5, 0x7f0400bb

    const/4 v7, 0x0

    .line 981
    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/android/systemui/statusbar/DismissView;

    .line 983
    .local v34, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v5, 0x7f0400b9

    const/4 v7, 0x0

    .line 990
    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 992
    .local v36, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v5, 0x7f0400be

    const/4 v7, 0x0

    .line 994
    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v53

    check-cast v53, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 996
    .local v53, "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v5, 0x7f0400b9

    const/4 v7, 0x0

    .line 997
    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v5, 0x7f0400bb

    const/4 v7, 0x0

    .line 1000
    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v4, 0x7f0f024b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 1013
    .local v32, "dismissBtn":Landroid/view/View;
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissButton(Landroid/view/View;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f027c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0f027e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0f027d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1024
    new-instance v3, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0281

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Lcom/android/systemui/statusbar/ScrimView;

    .line 1026
    .local v46, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0286

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Lcom/android/systemui/statusbar/ScrimView;

    .line 1027
    .local v47, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1030
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, v31

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f024c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00da

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0f024e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setStackScrollLayout(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f01cd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .end local v40    # "mNotificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    check-cast v40, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 1039
    .restart local v40    # "mNotificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    :goto_1
    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setVisibility(I)V

    .line 1040
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setGroup(I)V

    .line 1041
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->setInKeyguard(Z)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    move-object/from16 v0, v40

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f023a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f005e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0076

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .line 1046
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1050
    const v4, 0x7f0f0077

    .line 1049
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1052
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 1053
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 1052
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1056
    const v3, 0x7f0e0013

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    .line 1057
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_4

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0072

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/view/ViewStub;

    .line 1059
    .local v54, "tickerStub":Landroid/view/ViewStub;
    if-eqz v54, :cond_4

    .line 1060
    invoke-virtual/range {v54 .. v54}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getTickerView()Landroid/view/ViewStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerViewHolster:Landroid/view/View;

    .line 1062
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    .line 1063
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerHolster:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0273

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;

    .line 1065
    .local v55, "tickerView":Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerViewHolster:Landroid/view/View;

    const v4, 0x7f0f0273

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;

    .line 1066
    .local v56, "tickerViewHolster":Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->setTicker(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerHolster:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->setTicker(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    .line 1071
    .end local v54    # "tickerStub":Landroid/view/ViewStub;
    .end local v55    # "tickerView":Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
    .end local v56    # "tickerViewHolster":Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
    :cond_4
    const v3, 0x7f0b0373

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1077
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "PhoneStatusBar"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1081
    new-instance v3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 1082
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1098
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1099
    new-instance v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1100
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 1101
    new-instance v3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1103
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    .line 1104
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoBrightnessController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    .line 1105
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSmartTouchController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    .line 1106
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNfcController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    .line 1107
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    .line 1108
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRingerModeController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    .line 1109
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVpnController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVpnController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-interface {v3, v4}, Lcom/flyme/systemui/statusbar/policy/VpnController;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 1111
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 1112
    new-instance v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1113
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDriveModeController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    .line 1114
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEyeProtectiveController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    .line 1115
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAcceleratorController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    .line 1116
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataSaveController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    .line 1117
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 1118
    new-instance v3, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    .line 1119
    new-instance v3, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationReplyManager:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    .line 1120
    new-instance v28, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v28, "batteryTracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->setListening(Z)V

    .line 1122
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->setListening(Z)V

    .line 1129
    new-instance v43, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1149
    .local v43, "mScreenshotCallback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    move-object/from16 v0, v43

    invoke-interface {v3, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->addScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    .line 1152
    new-instance v42, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1172
    .local v42, "mScreenRecordCallback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    move-object/from16 v0, v42

    invoke-interface {v3, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->addScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1175
    new-instance v3, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1177
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1182
    new-instance v3, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f023b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1186
    .local v49, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f023b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1188
    .local v51, "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0f023b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1189
    .local v52, "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getSignalClusterView()Lcom/android/systemui/statusbar/SignalClusterView;

    move-result-object v50

    .line 1190
    .local v50, "signalClusterHolster":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v39

    .line 1201
    .local v39, "isAPhone":Z
    if-eqz v39, :cond_6

    .line 1202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;)V

    .line 1210
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0055

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getCarrierText()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHolster:Landroid/widget/TextView;

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00de

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockKeyguard:Landroid/view/View;

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00dd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelKeyguard:Landroid/view/View;

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0251

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeaderCarrierLabel:Landroid/widget/TextView;

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f00dd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCarrierLabel:Landroid/widget/TextView;

    .line 1218
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1219
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCarrierLabel(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;)V

    .line 1248
    new-instance v3, Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1251
    new-instance v3, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V

    .line 1253
    new-instance v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 1254
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1256
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1258
    :cond_8
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0f0248

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 1260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1258
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f01df

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_9

    .line 1266
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 1267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1268
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1269
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoBrightnessController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    move-object/from16 v16, v0

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSmartTouchController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    move-object/from16 v17, v0

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNfcController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    move-object/from16 v18, v0

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    move-object/from16 v19, v0

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRingerModeController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    move-object/from16 v20, v0

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVpnController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    move-object/from16 v21, v0

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    move-object/from16 v22, v0

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDriveModeController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    move-object/from16 v23, v0

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEyeProtectiveController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    move-object/from16 v24, v0

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAcceleratorController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    move-object/from16 v25, v0

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataSaveController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    move-object/from16 v26, v0

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    move-object/from16 v27, v0

    move-object/from16 v4, p0

    .line 1266
    invoke-direct/range {v2 .. v27}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;Lcom/flyme/systemui/statusbar/policy/SmartTouchController;Lcom/flyme/systemui/statusbar/policy/NfcController;Lcom/flyme/systemui/statusbar/policy/PowerSaveController;Lcom/flyme/systemui/statusbar/policy/RingerModeController;Lcom/flyme/systemui/statusbar/policy/VpnController;Lcom/flyme/systemui/statusbar/policy/ScreenshotController;Lcom/flyme/systemui/statusbar/policy/DriveModeController;Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;Lcom/flyme/systemui/statusbar/policy/AcceleratorController;Lcom/flyme/systemui/statusbar/policy/DataSaveController;Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;)V

    .line 1287
    .local v2, "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1289
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 1292
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 1301
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0052

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    .line 1309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getBatteryView()Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->getBatteryView()Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f0052

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryViewKeyguard:Lcom/flyme/systemui/FlymeBatteryMeterView;

    .line 1314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f00e0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevelViewKeyguard:Landroid/widget/TextView;

    .line 1315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0071

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevelView:Landroid/widget/TextView;

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryPercentView(Landroid/widget/TextView;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0f0239

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/ConnectionRateView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0f0239

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/ConnectionRateView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRateViewKeyguard:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRateViewKeyguard:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V

    .line 1330
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    .line 1331
    const-string/jumbo v3, "sans-serif-medium"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v57

    .line 1332
    .local v57, "typeface":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v57

    invoke-virtual {v3, v4, v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, v57

    invoke-virtual {v3, v4, v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-object/from16 v0, v57

    invoke-virtual {v3, v4, v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeController:Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0f0282

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-interface {v3, v4}, Lmeizu/space/MSpaceController;->addOnChangeListen(Lmeizu/space/MSpaceController$OnChangeListen;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/PowerManager;

    .line 1355
    .local v44, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 1356
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {v44 .. v44}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    :goto_3
    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v4, v5, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1359
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1360
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1362
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1366
    const-string/jumbo v3, "com.android.systemui.demo"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1368
    const-string/jumbo v3, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1371
    const-string/jumbo v3, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    const-string/jumbo v3, "android.intent.action.PROXIMITY_SCREEN_OFF"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v31

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onMakeStatusBar()V

    .line 1386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f008b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/music/KeyguardMusicView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 1387
    invoke-static/range {v31 .. v31}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-virtual {v3, v4}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicInfoCallback(Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicControlCallback:Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    invoke-virtual {v3, v4}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicViewChange(Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;)V

    .line 1390
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/keyguard/ChargeViewUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/keyguard/ChargeViewUtils;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/ChargeViewUtils;->setStatusBarWindowView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f027a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f027f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/meizu/media/render/GLBlurView;

    .line 1396
    .local v29, "blurView":Lcom/meizu/media/render/GLBlurView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f0280

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 1397
    .local v30, "blurViewCover":Landroid/widget/ImageView;
    invoke-static/range {v30 .. v30}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    .line 1399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 1398
    invoke-static {v3}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 1401
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError; {:try_start_1 .. :try_end_1} :catch_0

    .line 1404
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0f027b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    .line 1405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1411
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-virtual {v3, v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    invoke-interface {v3}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->getPowerSaveMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    .line 1415
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v3, :cond_b

    .line 1416
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSuperPowerSaveModeChange()V

    .line 1418
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-interface {v3, v4}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->addPowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->updateWallpaperColor(Landroid/content/Context;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f040065

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    const v4, 0x7f0f0188

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowTips:Landroid/widget/TextView;

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    const v4, 0x7f0f0187

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowImageView:Landroid/widget/ImageView;

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->setCallBack(Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v3

    .line 1039
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v28    # "batteryTracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    .end local v29    # "blurView":Lcom/meizu/media/render/GLBlurView;
    .end local v30    # "blurViewCover":Landroid/widget/ImageView;
    .end local v39    # "isAPhone":Z
    .end local v42    # "mScreenRecordCallback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    .end local v43    # "mScreenshotCallback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    .end local v44    # "pm":Landroid/os/PowerManager;
    .end local v49    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v50    # "signalClusterHolster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v51    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v52    # "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v57    # "typeface":Landroid/graphics/Typeface;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1220
    .restart local v28    # "batteryTracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    .restart local v39    # "isAPhone":Z
    .restart local v42    # "mScreenRecordCallback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    .restart local v43    # "mScreenshotCallback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    .restart local v49    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v50    # "signalClusterHolster":Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v51    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v52    # "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_d
    const/4 v3, 0x4

    goto/16 :goto_2

    .line 1356
    .restart local v44    # "pm":Landroid/os/PowerManager;
    .restart local v57    # "typeface":Landroid/graphics/Typeface;
    :cond_e
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_3

    .line 1407
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v29    # "blurView":Lcom/meizu/media/render/GLBlurView;
    .restart local v30    # "blurViewCover":Landroid/widget/ImageView;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1414
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1402
    :catch_0
    move-exception v35

    .local v35, "e":Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
    goto/16 :goto_4

    .line 933
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v28    # "batteryTracker":Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
    .end local v29    # "blurView":Lcom/meizu/media/render/GLBlurView;
    .end local v30    # "blurViewCover":Landroid/widget/ImageView;
    .end local v32    # "dismissBtn":Landroid/view/View;
    .end local v33    # "dismissFilterBtn":Landroid/view/View;
    .end local v34    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v35    # "e":Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
    .end local v36    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v39    # "isAPhone":Z
    .end local v40    # "mNotificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    .end local v41    # "mNotificationLayoutHolster":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    .end local v42    # "mScreenRecordCallback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    .end local v43    # "mScreenshotCallback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    .end local v44    # "pm":Landroid/os/PowerManager;
    .end local v46    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v47    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v49    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v50    # "signalClusterHolster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v51    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v52    # "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v53    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .end local v57    # "typeface":Landroid/graphics/Typeface;
    :catch_1
    move-exception v37

    .local v37, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public musicControlViewShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5771
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public mzDismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 6742
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 6741
    return-void
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3485
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3492
    :cond_0
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v2, 0x0

    .line 5247
    const/4 v1, 0x7

    .line 5246
    invoke-static {v1, v2, v2}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 5249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v2, 0x7f090260

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 5251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5252
    .local v0, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 5253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5255
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5245
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->checkIndicationStatus()V

    .line 5284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 5285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5281
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5180
    return v2

    .line 5182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 5184
    return v2

    .line 5186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->exitQsTilesEditMode(Z)V

    .line 5188
    return v2

    .line 5190
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 5191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 5192
    return v2

    .line 5195
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_6

    .line 5197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 5198
    return v3

    .line 5200
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    .line 5203
    :cond_5
    return v2

    .line 5205
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 5207
    return v3

    .line 5209
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseNotificationPanelOnKeyguardShade(Z)V

    .line 5210
    return v2

    .line 5213
    :cond_8
    return v3
.end method

.method public onBandHintFinish(Z)V
    .locals 1
    .param p1, "isScreenTurnedOff"    # Z

    .prologue
    .line 6725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 6726
    if-nez p1, :cond_0

    .line 6727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 6724
    :cond_0
    return-void
.end method

.method public onBandHintStarted()V
    .locals 5

    .prologue
    .line 6720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndicationShow()V

    .line 6721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x0

    const v1, 0x7f090142

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(IZJ)V

    .line 6719
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 6875
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onBootCompleted()V

    .line 6876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->setListening(Z)V

    .line 6873
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 2

    .prologue
    .line 5309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 5308
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 5294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5293
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4369
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4371
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4372
    const-string/jumbo v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockSize()V

    .line 4378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4379
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4385
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSmartTouch(Landroid/content/res/Configuration;)V

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 4390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateUnlockText()V

    .line 4368
    return-void
.end method

.method public onExpandingFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onExpandingFinished(Z)V

    .line 5989
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5990
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5992
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5996
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 5997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->capturePicture()V

    .line 6001
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->running(Z)V

    .line 5987
    :cond_3
    return-void
.end method

.method public onExpandingStarted()V
    .locals 1

    .prologue
    .line 6010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onExpandingStarted()V

    .line 6009
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 1

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 4457
    return-void
.end method

.method public onHintFinished()V
    .locals 4

    .prologue
    .line 5304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->checkIndicationStatus()V

    .line 5305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 5302
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .prologue
    .line 2993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 2992
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    .line 5175
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 6771
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 6770
    :cond_0
    return-void
.end method

.method public onPositionChanged(F)V
    .locals 5
    .param p1, "frank"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    .line 6032
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6033
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurSlideFracOnKeyguard:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 6034
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurSlideFracOnKeyguard:F

    .line 6035
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 6036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BackDropView;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 6037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/statusbar/BackDropView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6042
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    sub-float v1, v3, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 6043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsExpend:Z

    invoke-virtual {v0, p1, v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingColor(FZ)V

    .line 6031
    :cond_1
    return-void

    .line 6038
    :cond_2
    cmpl-float v0, p1, v3

    if-nez v0, :cond_0

    .line 6039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BackDropView;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 6040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/BackDropView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPullNotificationPanelOnKeyguardShade()V
    .locals 4

    .prologue
    .line 6571
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasClearedLightEffectsOnKeyguardShade:Z

    if-nez v2, :cond_0

    .line 6573
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6574
    .local v1, "notificationLoad":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 6575
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasClearedLightEffectsOnKeyguardShade:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6570
    .end local v1    # "notificationLoad":I
    :cond_0
    :goto_0
    return-void

    .line 6576
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onQsExpansionChanged(F)V
    .locals 3
    .param p1, "frac"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    if-eqz v0, :cond_0

    .line 5806
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 5808
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    .line 5809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 5812
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    .line 5814
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_2

    .line 5815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenshotController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->capturePicture()V

    .line 5819
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenRecordController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->running(Z)V

    .line 5803
    :cond_2
    return-void

    .line 5807
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5454
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5455
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onScreenTurnedOff()V

    .line 5462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onScreenTurnedOff()V

    .line 5464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 5465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOff()V

    .line 5466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5470
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZ)V

    .line 5453
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5474
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    .line 5479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5480
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    .line 5484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onScreenTurnedOn()V

    .line 5486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onScreenTurnedOn()V

    .line 5488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v1

    .line 5489
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectKeyguardOnNotification(Landroid/content/Context;Z)V

    .line 5473
    return-void
.end method

.method public onScreenTurnedOnForReason(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x1

    .line 6211
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 6212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 6213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    .line 6214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 6215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 6217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    .line 6219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onScreenTurnedOn()V

    .line 6221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onScreenTurnedOnForReason(I)V

    .line 6210
    return-void
.end method

.method public onSpacePressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5218
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_1

    .line 5219
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 5221
    return v1

    .line 5223
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5289
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5318
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5319
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5317
    :cond_1
    :goto_0
    return-void

    .line 5323
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 5324
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    goto :goto_0
.end method

.method public onTranslationChanged(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 6734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setTranslationY(F)V

    .line 6733
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 2

    .prologue
    .line 5298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->forceShowIndication()V

    .line 5299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 5297
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 2998
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 2997
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 5576
    if-eqz p1, :cond_0

    .line 5577
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5581
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5574
    return-void

    .line 5579
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3114
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3174
    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 4710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    .line 4715
    int-to-long v2, p2

    .line 4710
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4709
    return-void
.end method

.method public refreshAllStatusBarIcons()V
    .locals 3

    .prologue
    .line 1826
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1827
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1828
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsHolster:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1830
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeNotificationLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "notificationLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 1831
    .local v0, "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->getNotificationIcons()Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 1833
    .end local v0    # "notificationLayout":Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateColorFilter(Z)V

    .line 1825
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 2099
    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 4464
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4466
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    .line 4467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 4462
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsHolster:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1879
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2046
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2047
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2046
    if-eqz v1, :cond_0

    .line 2048
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->clear()V

    .line 2051
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->removeNotification(Ljava/lang/String;)V

    .line 2052
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->removeNotification(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2057
    .local v0, "old":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_2

    .line 2059
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v1, :cond_1

    .line 2060
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 2061
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerHolster:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 2064
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {v1, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->removeNotification(Ljava/lang/String;)V

    .line 2067
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2070
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2082
    const-wide/16 v4, 0x12c

    .line 2070
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2093
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2045
    return-void
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 5890
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 5891
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 5892
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5893
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5898
    :cond_0
    :goto_0
    return-object v0

    .line 5894
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->remove(Ljava/lang/String;Z)V

    .line 5895
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setThirdPartyNotifyIcon()V

    goto :goto_0
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x407

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    .line 2014
    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2012
    :cond_0
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 2

    .prologue
    const/16 v1, 0x405

    .line 2028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2027
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 2

    .prologue
    const/16 v1, 0x406

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2033
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 2

    .prologue
    const/16 v1, 0x404

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2021
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2483
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0f0233

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2484
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 2485
    .local v1, "showDot":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_2

    .line 2486
    if-eqz v1, :cond_1

    .line 2487
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2488
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2490
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2491
    if-eqz v1, :cond_5

    :goto_2
    int-to-float v2, v2

    .line 2490
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2492
    if-eqz v1, :cond_6

    const/16 v2, 0x2ee

    :goto_3
    int-to-long v6, v2

    .line 2490
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2493
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2490
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2494
    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 2490
    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2503
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2505
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2471
    return-void

    .line 2484
    .end local v1    # "showDot":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "showDot":Z
    goto :goto_0

    :cond_4
    move v4, v3

    .line 2485
    goto :goto_1

    :cond_5
    move v2, v3

    .line 2491
    goto :goto_2

    .line 2492
    :cond_6
    const/16 v2, 0xfa

    goto :goto_3

    .line 2494
    :cond_7
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_4
.end method

.method public setBackgroundBitmap(Z)V
    .locals 0
    .param p1, "expend"    # Z

    .prologue
    .line 6419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsExpend:Z

    .line 6418
    return-void
.end method

.method public setBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 5266
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 5268
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5273
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5274
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setKeyguardState(Z)V

    .line 5261
    return-void

    .line 5276
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 5269
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5449
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5450
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5448
    return-void
.end method

.method protected setEnablePullDownOnKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 6601
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setEnablePullDownOnKeyguard(Z)V

    .line 6602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 6603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEnablePullDownOnKeyguard(Z)V

    .line 6600
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 3723
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 3724
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3725
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 3726
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 3730
    :goto_1
    if-eqz p4, :cond_3

    .line 3731
    or-int/lit8 v0, v0, 0x2

    .line 3736
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 3722
    return-void

    .line 3723
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "imeShown":Z
    goto :goto_0

    .line 3728
    .restart local v0    # "flags":I
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 3733
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 3
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3632
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eq v1, p2, :cond_2

    const/4 v0, 0x1

    .line 3633
    .local v0, "changing":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 3634
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    .line 3633
    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3636
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_4

    .line 3637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3642
    :goto_2
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3648
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3631
    return-void

    .line 3632
    .end local v0    # "changing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changing":Z
    goto :goto_0

    .line 3635
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v1, v2

    goto :goto_1

    .line 3639
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_2
.end method

.method public setKeyguardFadingAway(JJ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v1, 0x1

    .line 5081
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5082
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 5083
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 5084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5085
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5080
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3693
    if-eqz p1, :cond_0

    .line 3694
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3692
    :goto_0
    return-void

    .line 3696
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setNavButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3038
    return-void
.end method

.method public setNotificationReplyingInfo(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->setNotificationReplyingInfo(Landroid/os/Bundle;)V

    .line 4471
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 2954
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 6308
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 6309
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 6310
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setShowLockscreenNotifications(Z)V

    .line 6312
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v1, :cond_1

    .line 6313
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v2, 0x7f0f01cd

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6314
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_2

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6317
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationCountChange(Z)V

    .line 6307
    return-void

    .line 6314
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStatusBarColorTheme(IZ)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    .line 3022
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    if-eq v0, p1, :cond_0

    .line 3023
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    .line 3024
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterValue:I

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->onStatusBarColorChange(I)V

    .line 3025
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorFilterAnim:Z

    .line 3026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterColorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3020
    :cond_0
    return-void
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 3016
    if-eqz p1, :cond_0

    const v0, -0xb8b8b9

    .line 3017
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarColorTheme(IZ)V

    .line 3015
    return-void

    .line 3016
    .end local v0    # "color":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 16
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3501
    .local v2, "oldVal":I
    move/from16 v0, p2

    not-int v1, v0

    and-int/2addr v1, v2

    and-int v4, p1, p2

    or-int v3, v1, v4

    .line 3502
    .local v3, "newVal":I
    xor-int v8, v3, v2

    .line 3503
    .local v8, "diff":I
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PhoneStatusBar"

    .line 3504
    const-string/jumbo v4, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    .line 3503
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 3505
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v5, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v5, v15

    .line 3506
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    aput-object v6, v5, v15

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x3

    aput-object v6, v5, v15

    .line 3507
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x4

    aput-object v6, v5, v15

    .line 3503
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_0
    if-eqz v8, :cond_c

    .line 3511
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v1, v1, 0x4000

    if-lez v1, :cond_d

    const/4 v14, 0x1

    .line 3513
    .local v14, "wasRecentsVisible":Z
    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3516
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_2

    .line 3517
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    const/4 v9, 0x1

    .line 3518
    .local v9, "lightsOut":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 3519
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3520
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v1, :cond_1

    .line 3521
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3525
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3529
    .end local v9    # "lightsOut":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    .line 3530
    const/high16 v5, 0x4000000

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v1, p0

    .line 3529
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v12

    .line 3533
    .local v12, "sbMode":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v1, :cond_f

    const/4 v10, -0x1

    .line 3536
    .local v10, "nbMode":I
    :goto_2
    const/4 v1, -0x1

    if-eq v12, v1, :cond_10

    const/4 v13, 0x1

    .line 3537
    .local v13, "sbModeChanged":Z
    :goto_3
    const/4 v1, -0x1

    if-eq v10, v1, :cond_11

    const/4 v11, 0x1

    .line 3538
    .local v11, "nbModeChanged":Z
    :goto_4
    const/4 v7, 0x0

    .line 3539
    .local v7, "checkBarModes":Z
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v12, v1, :cond_3

    .line 3540
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3541
    const/4 v7, 0x1

    .line 3543
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v10, v1, :cond_4

    .line 3544
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3545
    const/4 v7, 0x1

    .line 3547
    :cond_4
    if-eqz v7, :cond_5

    .line 3548
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3550
    :cond_5
    if-nez v13, :cond_6

    if-eqz v11, :cond_8

    .line 3552
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    .line 3553
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3560
    :cond_8
    :goto_5
    const/high16 v1, 0x10000000

    and-int v1, v1, p1

    if-eqz v1, :cond_9

    .line 3561
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v4, -0x10000001

    and-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3563
    :cond_9
    const/high16 v1, 0x20000000

    and-int v1, v1, p1

    if-eqz v1, :cond_a

    .line 3564
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v4, -0x20000001

    and-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3568
    :cond_a
    if-eqz v14, :cond_b

    .line 3569
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x4000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3573
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3499
    .end local v7    # "checkBarModes":Z
    .end local v10    # "nbMode":I
    .end local v11    # "nbModeChanged":Z
    .end local v12    # "sbMode":I
    .end local v13    # "sbModeChanged":Z
    .end local v14    # "wasRecentsVisible":Z
    :cond_c
    return-void

    .line 3511
    :cond_d
    const/4 v14, 0x0

    .restart local v14    # "wasRecentsVisible":Z
    goto/16 :goto_0

    .line 3517
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "lightsOut":Z
    goto/16 :goto_1

    .line 3534
    .end local v9    # "lightsOut":Z
    .restart local v12    # "sbMode":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    .line 3535
    const/high16 v5, 0x8000000

    const/high16 v6, -0x80000000

    move-object/from16 v1, p0

    .line 3533
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v10

    .restart local v10    # "nbMode":I
    goto/16 :goto_2

    .line 3536
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "sbModeChanged":Z
    goto/16 :goto_3

    .line 3537
    :cond_11
    const/4 v11, 0x0

    .restart local v11    # "nbModeChanged":Z
    goto/16 :goto_4

    .line 3555
    .restart local v7    # "checkBarModes":Z
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_5
.end method

.method public setWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2771
    if-nez p1, :cond_0

    .line 2772
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 2770
    :cond_0
    return-void
.end method

.method public setWindowState(II)V
    .locals 3
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 3458
    if-nez p2, :cond_3

    const/4 v0, 0x1

    .line 3459
    .local v0, "showing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_1

    .line 3460
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3461
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3462
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3464
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3467
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->onStatusBarVisibleChange(Z)V

    .line 3469
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_2

    .line 3470
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3471
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_2

    .line 3472
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3457
    :cond_2
    return-void

    .line 3458
    .end local v0    # "showing":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "showing":Z
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1589
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1588
    :cond_0
    return-void
.end method

.method public shouldChargingViewShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6015
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6016
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6015
    :cond_0
    :goto_0
    return v0

    .line 6017
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsExpansionFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 6020
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicViewShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6021
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6023
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMzKeyguardAffordanceHelperSwiping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6026
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 6018
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyExpandedOnKeyguardShade()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4705
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 4704
    if-nez v2, :cond_0

    .line 4706
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 4704
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4706
    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 6616
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldIgnoreHeadsUpNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6617
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 6618
    const-string/jumbo v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New headsup notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has lower prioiry than showing one, should not interrupt."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    :cond_0
    return v1

    .line 6622
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {v2}, Lmeizu/space/MSpaceController;->isChildrenMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {v2, p1}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6623
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 6624
    const-string/jumbo v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New headsup notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must hide for privacy mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6626
    :cond_3
    return v1

    .line 6628
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6629
    return v1

    .line 6631
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-eqz v2, :cond_6

    .line 6632
    return v1

    .line 6634
    :cond_6
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v2, :cond_a

    :cond_7
    const/4 v0, 0x0

    .line 6635
    .local v0, "interrupt":Z
    :goto_0
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6636
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRedEnvelopeAssistantController:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-interface {v2, v3}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->onHeadsUpNotificationShown(Landroid/app/PendingIntent;)V

    .line 6639
    :cond_8
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    :goto_1
    return v1

    .line 6634
    .end local v0    # "interrupt":Z
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "interrupt":Z
    goto :goto_0

    .line 6639
    :cond_b
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 6788
    if-eqz p1, :cond_3

    .line 6789
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6790
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6791
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6792
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->addView(Landroid/view/View;)V

    .line 6794
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 6795
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6796
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 6798
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6803
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysShowMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6804
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateAlwaysShowArea(Landroid/os/Bundle;)V

    .line 6787
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3
    return-void

    .line 6799
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentPackageName:Ljava/lang/String;

    .line 6800
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f06000c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6801
    .local v0, "animIn":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarAlwaysShowArea:Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    invoke-virtual {v2, v0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_0

    return-void

    .line 2764
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f00bc

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2765
    .local v0, "clock":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2766
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    :cond_1
    return-void

    .line 2766
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showKeyguard()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4860
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 4861
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasClearedLightEffectsOnKeyguardShade:Z

    .line 4862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpEscalation()V

    .line 4864
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    .line 4865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4869
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 4871
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4872
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 4873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->onShowKeyguard()V

    .line 4874
    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 4875
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    if-nez v0, :cond_6

    .line 4880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 4885
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 4886
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 4888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 4890
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4894
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mChargeUtils:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->onShowKeyguard()V

    .line 4896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-eqz v0, :cond_2

    .line 4899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 4901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 4903
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 4904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4912
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 4913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4916
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_5

    .line 4917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->setTranslationY(F)V

    .line 4920
    :cond_5
    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onKeyguardChange(Z)V

    .line 4924
    invoke-static {v6}, Lcom/android/systemui/recents/Recents;->onKeyguardChange(Z)V

    .line 4858
    return-void

    .line 4883
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    goto :goto_0

    .line 4908
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 4909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public showKeyguardClock(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6265
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowKeyguardClock:Z

    .line 6266
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelKeyguard:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowKeyguardClock:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockKeyguard:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSuperPowerSaveEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowKeyguardClock:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6264
    return-void

    :cond_1
    move v0, v1

    .line 6266
    goto :goto_0

    :cond_2
    move v1, v2

    .line 6267
    goto :goto_1
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 5552
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5553
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5554
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 5550
    return-void
.end method

.method public showRecongnizeFailAnim()V
    .locals 2

    .prologue
    .line 6748
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onUnlockHintStarted()V

    .line 6749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showRecongnizeFailAnim(Ljava/lang/Runnable;)V

    .line 6747
    return-void
.end method

.method public showScreenPinningRequest()V
    .locals 1

    .prologue
    .line 5586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5588
    return-void

    .line 5591
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 5585
    return-void
.end method

.method public showScreenPinningRequest(Z)V
    .locals 0
    .param p1, "allowCancel"    # Z

    .prologue
    .line 5594
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1648
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1649
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1652
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1654
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1657
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1658
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1647
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public snoozeNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1995
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 1996
    .local v2, "notification":Landroid/app/Notification;
    if-eqz v2, :cond_0

    .line 1997
    iget-object v1, v2, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    .line 1998
    .local v1, "hideHeadsUpIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 2000
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    const/4 v3, 0x1

    return v3

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 2007
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "hideHeadsUpIntent":Landroid/app/PendingIntent;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 784
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 787
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 788
    const v2, 0x7f0e000c

    .line 787
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 789
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 792
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 791
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 796
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 799
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 800
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 802
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 805
    const-string/jumbo v2, "heads_up_notifications_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 806
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 804
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 807
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 808
    const-string/jumbo v2, "ticker_gets_heads_up"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 809
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 807
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 813
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 815
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 816
    const-class v1, Lcom/android/systemui/doze/DozeHost;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 817
    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUserAboutHiddenNotifications()V

    .line 823
    new-instance v1, Lcom/flyme/systemui/recents/ScreenPinningRequest;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    .line 825
    new-instance v1, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    .line 826
    const-string/jumbo v1, "flyme_statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    .line 827
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    if-eqz v1, :cond_0

    .line 829
    :try_start_0
    new-instance v1, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;-><init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeCommandQueue:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    .line 830
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlymeCommandQueue:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-interface {v1, v2}, Lmeizu/statusbar/IFlymeStatusBarService;->registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 783
    return-void

    .line 831
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 2947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2946
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 4106
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    .line 4108
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    .line 4110
    .local v4, "afterKeyguardGone":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 4111
    .local v3, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    move-object v1, p0

    move v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZZLandroid/content/Intent;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 4105
    return-void

    .line 4106
    .end local v3    # "keyguardShowing":Z
    .end local v4    # "afterKeyguardGone":Z
    :cond_1
    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .prologue
    .line 4988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    .line 4989
    const-wide/16 v2, 0x1388

    .line 4988
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4987
    return-void
.end method

.method public startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 6702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startUnlockHintAnimation()V

    .line 6701
    :cond_0
    return-void
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 3741
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 3744
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3747
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3750
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 3754
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3755
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "tick() -- pkg encrypted! no ticker..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    return-void

    .line 3764
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_5

    .line 3765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v0, :cond_6

    .line 3740
    :cond_5
    :goto_0
    return-void

    .line 3766
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa0000

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {v0}, Lmeizu/space/MSpaceController;->isChildrenMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSpaceController:Lmeizu/space/MSpaceController;

    invoke-interface {v0, p1}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3776
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerHolster:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 3770
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 5568
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5569
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5570
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 5566
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 3708
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3709
    const-string/jumbo v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNavigationBarBackgroundColor()V

    .line 3717
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 3707
    :cond_2
    return-void

    .line 3709
    :cond_3
    const-string/jumbo v0, "hiding"

    goto :goto_0
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2425
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-nez v2, :cond_0

    return-void

    .line 2435
    :cond_0
    const/4 v0, 0x1

    .line 2437
    .local v0, "emergencyCallsShownElsewhere":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2438
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    .line 2439
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 2438
    sub-int/2addr v3, v4

    .line 2439
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    .line 2438
    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_6

    .line 2440
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 2441
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v1, 0x1

    .line 2443
    .local v1, "makeVisible":Z
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    if-eq v2, v1, :cond_4

    .line 2444
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 2445
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2446
    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "making carrier label "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_7

    const-string/jumbo v2, "visible"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2449
    if-eqz v1, :cond_3

    .line 2450
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2452
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2453
    if-eqz v1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2452
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2456
    const-wide/16 v4, 0x96

    .line 2452
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2457
    if-eqz v1, :cond_9

    const/4 v2, 0x0

    .line 2452
    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2423
    :cond_4
    return-void

    .line 2441
    .end local v1    # "makeVisible":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "makeVisible":Z
    goto :goto_0

    .line 2437
    .end local v1    # "makeVisible":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "makeVisible":Z
    goto :goto_0

    .line 2446
    :cond_7
    const-string/jumbo v2, "invisible"

    goto :goto_1

    .line 2453
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 2457
    :cond_9
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_3
.end method

.method public updateChargingMask(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 6895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    .line 6896
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 6895
    invoke-virtual {v1, v2, v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setFilterColor(I)V

    .line 6894
    return-void
.end method

.method public updateClearAll()V
    .locals 4

    .prologue
    .line 2350
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2351
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v2

    .line 2350
    if-eqz v2, :cond_2

    .line 2353
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2354
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFilterPanelDismissButtonVisible()Z

    move-result v0

    .line 2355
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearablNotifications(Z)Z

    move-result v1

    .line 2356
    .local v1, "showFilterDismissView":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2357
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissView(Z)V

    .line 2358
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2349
    return-void

    .line 2353
    .end local v1    # "showFilterDismissView":Z
    :cond_1
    const/4 v0, 0x1

    .local v0, "showDismissView":Z
    goto :goto_0

    .line 2350
    .end local v0    # "showDismissView":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showDismissView":Z
    goto :goto_0
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4091
    return-void
.end method

.method public updateDropViews(ZZ)V
    .locals 1
    .param p1, "metaDataChanged"    # Z
    .param p2, "notificationChanged"    # Z

    .prologue
    .line 6050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZZ)V

    .line 6049
    return-void
.end method

.method public updateDropViews(ZZZ)V
    .locals 1
    .param p1, "metaDataChanged"    # Z
    .param p2, "notificationChanged"    # Z
    .param p3, "wallpaperChanged"    # Z

    .prologue
    .line 6054
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZZZ)V

    .line 6053
    return-void
.end method

.method public updateDropViews(ZZZZ)V
    .locals 11
    .param p1, "metaDataChanged"    # Z
    .param p2, "notificationChanged"    # Z
    .param p3, "wallpaperChanged"    # Z
    .param p4, "musicVisibleChanged"    # Z

    .prologue
    const v10, 0x3e99999a    # 0.3f

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 6059
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-eqz v2, :cond_0

    .line 6060
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v2

    .line 6059
    if-eqz v2, :cond_1

    .line 6061
    :cond_0
    return-void

    .line 6063
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    .line 6064
    .local v1, "hasArtwork":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    .line 6065
    if-nez v1, :cond_a

    .line 6097
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 6098
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6099
    if-nez v1, :cond_7

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_7

    .line 6100
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 6101
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6102
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6103
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v2, :cond_5

    .line 6104
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 6106
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6111
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 6112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6113
    const-wide/16 v4, 0xfa

    .line 6112
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6114
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 6112
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 6116
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v2, :cond_7

    .line 6117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 6120
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 6121
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 6122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 6124
    :cond_8
    return-void

    .line 6063
    .end local v1    # "hasArtwork":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "hasArtwork":Z
    goto/16 :goto_0

    .line 6066
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 6068
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_d

    .line 6069
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 6070
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 6071
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    .line 6072
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6074
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicPlaying()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6075
    const/4 p1, 0x1

    .line 6081
    .end local p1    # "metaDataChanged":Z
    :cond_d
    if-eqz p1, :cond_e

    .line 6087
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mArtwork:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 6088
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 6089
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    .line 6088
    invoke-virtual {v2, v3, v4}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 6057
    :cond_e
    :goto_2
    return-void

    .line 6109
    .restart local p1    # "metaDataChanged":Z
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 6127
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    .line 6132
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6136
    const v3, 0x3b03126f    # 0.002f

    .line 6132
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6137
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v3, v10, v9, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 6132
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6138
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    .line 6132
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6139
    const-wide/16 v4, 0x0

    .line 6132
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6140
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 6132
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 6155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6156
    const-wide/16 v4, 0x12c

    .line 6155
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6158
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v3, v10, v9, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 6155
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6161
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v2, :cond_e

    .line 6162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 6173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6176
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    .line 6173
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6177
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 6173
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6178
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v3, v10, v9, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 6173
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4080
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4081
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 4080
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4083
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4084
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4085
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4087
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4076
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1872
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1873
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1874
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1875
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsHolster:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1876
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1868
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 5917
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 5918
    if-eqz p1, :cond_0

    .line 5919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5925
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClearAll()V

    .line 5916
    return-void

    .line 5921
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->update(Ljava/lang/String;Z)V

    .line 5922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setThirdPartyNotifyIcon()V

    goto :goto_0
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2041
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 2039
    return-void
.end method

.method protected updateNotificationTicker(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v1, 0x0

    .line 5903
    if-eqz p1, :cond_1

    .line 5904
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5905
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_1

    .line 5906
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {v2, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5907
    iget v2, v0, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5911
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_1
    return v1
.end method

.method protected updateNotifications()V
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    if-nez v0, :cond_0

    return-void

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2395
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 2388
    return-void
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 4484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_0

    .line 4485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->refreshHeight()V

    .line 4490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1

    .line 4491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 4494
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    .line 4495
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 4499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_2

    .line 4500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 4503
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_3

    .line 4504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4506
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_4

    .line 4507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->updateResources()V

    .line 4509
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_5

    .line 4510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4512
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    if-eqz v0, :cond_6

    .line 4513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationFilterPanel:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateResources()V

    .line 4482
    :cond_6
    return-void
.end method

.method protected updateRowStates()V
    .locals 0

    .prologue
    .line 2417
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStatesMz()V

    .line 2411
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1640
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1639
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 8
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v2, :cond_0

    return-void

    .line 5144
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    .line 5145
    .local v1, "onKeyguard":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual {v2, v5, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 5146
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 5148
    if-eqz v1, :cond_4

    .line 5149
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    .line 5148
    if-eqz v2, :cond_4

    .line 5151
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 5146
    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5156
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5157
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5158
    if-eqz v0, :cond_1

    .line 5159
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5142
    :cond_1
    return-void

    .line 5144
    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "onKeyguard":Z
    goto :goto_0

    :cond_3
    move v2, v4

    .line 5151
    goto :goto_1

    :cond_4
    move v2, v3

    .line 5148
    goto :goto_1
.end method

.method public updateStatusBarAndWallpaperColor()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6331
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 6332
    const-string/jumbo v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DEBUG_STATUSBAR_COLOR:  mHasArtwork = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6333
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6334
    const-string/jumbo v6, ",  mHasNotification = "

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v6

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6336
    const-string/jumbo v6, ", currentColor = "

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6337
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(Z)I

    move-result v6

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6338
    const-string/jumbo v6, ", isShade = "

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v6

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6340
    const-string/jumbo v6, ", isQsFullyExpanded = "

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6341
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v6

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6342
    const-string/jumbo v6, ", isFullyExpanded"

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6343
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v6

    .line 6332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6345
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v5

    .line 6346
    const/4 v6, 0x2

    .line 6345
    invoke-virtual {v5, v2, v6}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setFilterColor(I)V

    .line 6347
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastBackdropFrontAnimation:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 6349
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6350
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6351
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6352
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastBackdropFrontAnimation:J

    .line 6358
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6359
    .local v0, "coveredBitmap":Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    if-eqz v4, :cond_5

    .line 6360
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoveredBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6361
    .local v0, "coveredBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6370
    .end local v0    # "coveredBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6371
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    .line 6372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v6

    .line 6373
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyExpandedOnKeyguardShade()Z

    move-result v7

    if-nez v7, :cond_2

    .line 6374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShadeMode()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v2

    .line 6371
    :cond_2
    :goto_3
    invoke-virtual {v4, v5, v6, v2}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingState(ZZZ)V

    .line 6375
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 6383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastBackdropFrontAnimation:J

    .line 6384
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6385
    const-wide/16 v4, 0x1a0

    .line 6384
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6386
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v8, v5, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 6384
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 6387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideMuscicRunnable:Ljava/lang/Runnable;

    .line 6384
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 6330
    :cond_3
    return-void

    .line 6356
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6363
    .local v0, "coveredBitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6364
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 6366
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoveredBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6367
    .local v0, "coveredBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 6370
    .end local v0    # "coveredBitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_8
    move v2, v3

    .line 6374
    goto :goto_3
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 5164
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 5163
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 6
    .param p1, "newUserId"    # I

    .prologue
    .line 4396
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 4398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4399
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 4400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4404
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mConnectionRaController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate()V

    .line 4405
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->userSwitched(I)V

    .line 4406
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->userSwitched(I)V

    .line 4407
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->clear()V

    .line 4408
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4409
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4410
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    .line 4411
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v3, v4}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4412
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4413
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v3, v3, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-nez v3, :cond_0

    .line 4414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mThirdPartyNotificationList:Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->add(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4418
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setThirdPartyNotifyIcon()V

    .line 4419
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitcherView:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    invoke-virtual {v3, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->userSwitched(I)V

    .line 4420
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppEncrptedCache()V

    .line 4395
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 4674
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 4675
    const-string/jumbo v2, "vibrator"

    .line 4674
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4676
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4673
    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5615
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5616
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5617
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5619
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5614
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
