.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$1;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$2;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$3;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$4;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$5;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$6;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$7;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$8;
    }
.end annotation


# static fields
.field private static final FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static mKeyguardDoneOnGoing:Z


# instance fields
.field private final DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

.field private final DEMO_MODE_ENABLE:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAlipayClass:Ljava/lang/String;

.field private final mAlipayUrl:Ljava/lang/String;

.field private final mAnimationConnection:Landroid/content/ServiceConnection;

.field private mAnimationIntent:Landroid/content/Intent;

.field private mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBindLauncherAnimationService:Z

.field private mBootComplete:Z

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

.field private mHolsterStatusbarPadding:I

.field private mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

.field private mInputRestricted:Z

.field private mInvalidDialog:Landroid/app/AlertDialog;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockIntent:Landroid/content/Intent;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPlayVideoIntent:Landroid/app/PendingIntent;

.field private mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopVideoIntent:Landroid/app/PendingIntent;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextLockSoundForHolster:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field public mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/flyme/animatorservice/IMzAnimatorService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    return-object v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/keyguard/MzGestureHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusbarPadding:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/meizu/flyme/animatorservice/IMzAnimatorService;)Lcom/meizu/flyme/animatorservice/IMzAnimatorService;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldPlayVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOn()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p1, "isOccluded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showIntelligentHolsterView()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUpAndStartActivityAfterKeyguardExit()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismissIntelligentHolsterView()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitGuestMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const/high16 v1, 0x24000000

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    .line 398
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.meizu.flashlight"

    const-string/jumbo v2, "com.meizu.flashlight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 244
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    .line 274
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 291
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 313
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 332
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 335
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 336
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    .line 358
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 401
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000056"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlipayUrl:Ljava/lang/String;

    .line 402
    const-string/jumbo v0, "com.eg.android.AlipayGphone/alipayCode"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlipayClass:Ljava/lang/String;

    .line 410
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    .line 411
    const-string/jumbo v0, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 662
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1356
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1430
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 1735
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2160
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    .line 2462
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.animatorservice.IMzAnimatorService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationIntent:Landroid/content/Intent;

    .line 2486
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationConnection:Landroid/content/ServiceConnection;

    .line 169
    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 3

    .prologue
    .line 1834
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1836
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1835
    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1838
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 1839
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :cond_1
    :goto_0
    return-void

    .line 1843
    :cond_2
    const/4 v0, 0x0

    .line 1844
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 1848
    const/high16 v0, 0x1000000

    .line 1849
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1851
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1852
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1860
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1861
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private bindLauncherAnimationService()V
    .locals 5

    .prologue
    .line 2466
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isLauncherForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.flyme.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2468
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2469
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationConnection:Landroid/content/ServiceConnection;

    .line 2470
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 2468
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    .line 2472
    :cond_0
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindLauncherAnimationService mBindLauncherAnimationService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2473
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    .line 2472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    return-void
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 947
    return-void
.end method

.method private checkIsVideo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2362
    const/4 v1, 0x0

    .line 2363
    .local v1, "isVideo":Z
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2364
    .local v0, "end":Ljava/lang/String;
    const-string/jumbo v2, "mp4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "avi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mkv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "flv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2365
    :cond_0
    const/4 v1, 0x1

    .line 2369
    :goto_0
    return v1

    .line 2367
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissIntelligentHolsterView()V
    .locals 2

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->hide()V

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setVisibility(I)V

    .line 2085
    :cond_0
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 18

    .prologue
    .line 906
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 909
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v11, "screen_off_timeout"

    .line 910
    const/16 v16, 0x7530

    .line 909
    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v4, v11

    .line 914
    .local v4, "displayTimeout":J
    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    .line 915
    const/16 v16, 0x1388

    .line 913
    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v6, v11

    .line 918
    .local v6, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    .line 919
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x0

    .line 918
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v8

    .line 922
    .local v8, "policyTimeout":J
    const-wide/16 v16, 0x0

    cmp-long v11, v8, v16

    if-lez v11, :cond_0

    .line 924
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 925
    sub-long v16, v8, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 930
    .local v12, "timeout":J
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-gtz v11, :cond_1

    .line 932
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 933
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 900
    :goto_1
    return-void

    .line 927
    .end local v12    # "timeout":J
    :cond_0
    move-wide v12, v6

    .restart local v12    # "timeout":J
    goto :goto_0

    .line 936
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    add-long v14, v16, v12

    .line 937
    .local v14, "when":J
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 940
    const/16 v16, 0x0

    const/high16 v17, 0x10000000

    .line 939
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v0, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 941
    .local v10, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->ignoreDoKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1195
    return-void

    .line 1198
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1214
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1216
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1217
    return-void

    .line 1210
    :cond_2
    return-void

    .line 1221
    :cond_3
    const-string/jumbo v5, "keyguard.no_require_sim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    .line 1223
    .local v3, "requireSim":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1222
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 1225
    .local v0, "absent":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1224
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 1226
    .local v1, "disabled":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1227
    if-nez v0, :cond_4

    if-eqz v1, :cond_9

    :cond_4
    move v2, v3

    .line 1228
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v4

    .line 1230
    .local v4, "showWellcome":Z
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1233
    :cond_5
    :goto_2
    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_b

    .line 1236
    :cond_6
    return-void

    .line 1221
    .end local v0    # "absent":Z
    .end local v1    # "disabled":Z
    .end local v3    # "requireSim":Z
    .end local v4    # "showWellcome":Z
    :cond_7
    const/4 v3, 0x1

    .restart local v3    # "requireSim":Z
    goto :goto_0

    .line 1226
    .restart local v0    # "absent":Z
    .restart local v1    # "disabled":Z
    :cond_8
    const/4 v2, 0x1

    .local v2, "lockedOrMissing":Z
    goto :goto_1

    .line 1227
    .end local v2    # "lockedOrMissing":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "lockedOrMissing":Z
    goto :goto_1

    .line 1230
    .end local v2    # "lockedOrMissing":Z
    .restart local v4    # "showWellcome":Z
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1231
    const/4 v2, 0x1

    .restart local v2    # "lockedOrMissing":Z
    goto :goto_2

    .line 1239
    .end local v2    # "lockedOrMissing":Z
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v2, :cond_d

    .line 1244
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1247
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1249
    return-void

    .line 1241
    :cond_d
    return-void

    .line 1253
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1255
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->bindLauncherAnimationService()V

    .line 1193
    return-void
.end method

.method private exitGuestMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2018
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lossMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2019
    return-void

    .line 2020
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGuestMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2021
    const/4 v1, -0x1

    .line 2022
    .local v1, "id":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2023
    const-string/jumbo v7, "user"

    .line 2022
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2024
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 2025
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2026
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2027
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .line 2031
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 2032
    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "guest mode, switchUser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2035
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .end local v1    # "id":I
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :goto_1
    return-void

    .line 2037
    .restart local v1    # "id":I
    .restart local v2    # "um":Landroid/os/UserManager;
    .restart local v4    # "user$iterator":Ljava/util/Iterator;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 1762
    monitor-enter p0

    .line 1765
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1766
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 1777
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1778
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 1776
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1761
    return-void

    .line 1767
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1770
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 7
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1566
    monitor-enter p0

    .line 1567
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1570
    sput-boolean v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    .line 1572
    if-eqz p1, :cond_0

    .line 1573
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1574
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->recordUnlockTimes()V

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1578
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 1580
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1585
    :goto_0
    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1587
    if-eqz p1, :cond_1

    .line 1590
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1591
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1592
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 1597
    :cond_1
    if-eqz p2, :cond_2

    .line 1598
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1602
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1564
    return-void

    .line 1566
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call onKeyguardExitResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    goto :goto_1
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1626
    monitor-enter p0

    .line 1628
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyAll()V

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1625
    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1895
    monitor-enter p0

    .line 1897
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1894
    return-void

    .line 1895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenOn()V
    .locals 1

    .prologue
    .line 1906
    monitor-enter p0

    .line 1908
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1905
    return-void

    .line 1906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2183
    monitor-enter p0

    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurningOn()V

    .line 2186
    if-eqz p1, :cond_0

    .line 2187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2182
    return-void

    .line 2183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 1

    .prologue
    .line 1785
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 1783
    :cond_0
    return-void
.end method

.method private handleReset()V
    .locals 1

    .prologue
    .line 1871
    monitor-enter p0

    .line 1873
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1870
    return-void

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSetOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 1141
    monitor-enter p0

    .line 1142
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 1143
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 1145
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1140
    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x15

    .line 1697
    monitor-enter p0

    .line 1699
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1701
    return-void

    .line 1706
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1709
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1711
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1712
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1713
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1719
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    if-eqz v0, :cond_1

    .line 1723
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1696
    return-void

    .line 1697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1791
    monitor-enter p0

    .line 1793
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 1794
    return-void

    .line 1796
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1799
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    .line 1800
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1803
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1804
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 1805
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1806
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1807
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1808
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1809
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1811
    sput-boolean v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    .line 1812
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    .line 1813
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    if-eqz v2, :cond_2

    .line 1815
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    invoke-interface {v2}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService;->showLauncherAnimation()V

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unbindLauncherAnimationService()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1822
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1823
    if-eqz v1, :cond_3

    .line 1824
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1825
    const-wide/16 v4, 0x12c

    .line 1824
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1827
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3f333333    # 0.7f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1824
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1790
    :cond_3
    return-void

    .line 1791
    .end local v1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1817
    .restart local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unbindLauncherAnimationService()V

    .line 1819
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Show animation exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1882
    monitor-enter p0

    .line 1884
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->verifyUnlock()V

    .line 1886
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1881
    return-void

    .line 1882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1337
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1334
    return-void
.end method

.method private ignoreDoKeyguardLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2384
    const/4 v2, 0x0

    .line 2386
    .local v2, "ignore":Z
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2385
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 2387
    .local v3, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2388
    :cond_0
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "lock beacause sim pin secure or find phone is locked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return v2

    .line 2396
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2397
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2398
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2399
    const-string/jumbo v5, "activity"

    .line 2398
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2400
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2401
    .local v1, "cn":Landroid/content/ComponentName;
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    if-eqz v1, :cond_2

    .line 2403
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 2404
    const-string/jumbo v5, "com.android.incallui.InCallActivity"

    .line 2403
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2402
    if-eqz v4, :cond_2

    .line 2405
    const-string/jumbo v4, "KeyguardViewMediator"

    .line 2406
    const-string/jumbo v5, "not to lock because phone state is not idle and top is InCallActivity"

    .line 2405
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const/4 v2, 0x1

    .line 2415
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return v2

    .line 2410
    :cond_3
    const-string/jumbo v4, "KeyguardViewMediator"

    .line 2411
    const-string/jumbo v5, "not to lock because phone state is not idle and no password"

    .line 2410
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isAutoUpdate()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2421
    const/4 v2, 0x0

    .line 2423
    .local v2, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/cache/.update_auto"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2424
    .end local v2    # "reader":Ljava/io/FileReader;
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v5

    int-to-char v4, v5

    .line 2425
    .local v4, "value":I
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "auto update value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2426
    const/16 v5, 0x31

    if-ne v5, v4, :cond_1

    .line 2427
    const/4 v5, 0x1

    .line 2435
    if-eqz v3, :cond_0

    .line 2437
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2427
    :cond_0
    :goto_0
    return v5

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2435
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v3, :cond_2

    .line 2437
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2429
    :cond_2
    :goto_1
    return v8

    .line 2438
    :catch_1
    move-exception v0

    .line 2439
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/FileReader;
    .end local v4    # "value":I
    .restart local v2    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 2433
    .end local v2    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "auto update"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2435
    if-eqz v2, :cond_3

    .line 2437
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2443
    :cond_3
    :goto_3
    return v8

    .line 2438
    :catch_3
    move-exception v0

    .line 2439
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2434
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2435
    :goto_4
    if-eqz v2, :cond_4

    .line 2437
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2434
    :cond_4
    :goto_5
    throw v5

    .line 2438
    :catch_4
    move-exception v0

    .line 2439
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2434
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .local v2, "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 2432
    .end local v2    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 882
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 886
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    const/4 v2, 0x1

    return v2

    .line 889
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 883
    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isLauncherForeground()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2509
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2510
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2511
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 2512
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2513
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2516
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    if-eqz v1, :cond_1

    .line 2517
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2518
    .local v2, "currentPackageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "com.meizu.flyme.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2519
    return v7

    .line 2522
    .end local v2    # "currentPackageName":Ljava/lang/String;
    :cond_1
    return v6
.end method

.method private lossMode()Z
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    return v0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 978
    :cond_0
    return-void
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2194
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2192
    :goto_0
    return-void

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Exception calling onDrawn():"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1300
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2179
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2176
    return-void
.end method

.method private notifyScreenOnLocked()V
    .locals 3

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1313
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1310
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1658
    if-nez p1, :cond_0

    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1660
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1664
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    .line 1668
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1671
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1673
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 1674
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    .line 1673
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    .line 1657
    :cond_4
    return-void
.end method

.method private playSounds(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1644
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1645
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1646
    return-void

    .line 1649
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    if-eqz v0, :cond_1

    .line 1650
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    .line 1651
    return-void

    .line 1654
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 1641
    return-void

    .line 1654
    :cond_2
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_0
.end method

.method private registerLidCallback()V
    .locals 0

    .prologue
    .line 2082
    return-void
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateKeyguardDonePending(Z)V

    .line 1915
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1912
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 8

    .prologue
    .line 1606
    monitor-enter p0

    .line 1607
    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v5, :cond_0

    .line 1608
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1609
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 1610
    const-string/jumbo v6, "user"

    .line 1609
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1611
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1612
    .local v4, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1613
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1606
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1616
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1605
    return-void
.end method

.method private setShowingLocked(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 1974
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eq p1, v3, :cond_1

    .line 1975
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1977
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1978
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1979
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 1982
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call onShowingStateChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1984
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1985
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v3}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 1973
    :cond_1
    return-void
.end method

.method private setupLocked()V
    .locals 15

    .prologue
    const/high16 v14, 0x10000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 738
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 739
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 740
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "trust"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/trust/TrustManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 742
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v9, "show keyguard"

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 743
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 745
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 746
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v6, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v6, :cond_0

    .line 753
    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string/jumbo v6, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 759
    new-instance v6, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 761
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "alarm"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 763
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 765
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 768
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 769
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 770
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 771
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 772
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFindPhoneUtils(Lcom/meizu/findphone/FindPhoneAbstract;)V

    .line 773
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFindPhoneState()V

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 776
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_1
    move v6, v7

    .line 775
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 778
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v6}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 780
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 781
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 780
    invoke-direct {v6, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 782
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 784
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 786
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v8, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 787
    const-string/jumbo v6, "lock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 789
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 791
    :cond_2
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_4

    .line 792
    :cond_3
    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to load lock sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_4
    const-string/jumbo v6, "unlock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 795
    if-eqz v4, :cond_5

    .line 796
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 798
    :cond_5
    if-eqz v4, :cond_6

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_7

    .line 799
    :cond_6
    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to load unlock sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_7
    const-string/jumbo v6, "trusted_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 802
    if-eqz v4, :cond_8

    .line 803
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 805
    :cond_8
    if-eqz v4, :cond_9

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v6, :cond_a

    .line 806
    :cond_9
    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to load trusted sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 810
    const v9, 0x10e0006

    .line 809
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 811
    .local v2, "lockSoundDefaultAttenuation":I
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    int-to-float v6, v2

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v6, v9

    float-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 813
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 814
    const v9, 0x10a0034

    .line 813
    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 819
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v6, :cond_b

    .line 820
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v9, "playvideo screenoff"

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 821
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 822
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v3, "playIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    .line 824
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "mz.action.demo.keyguard.lock"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    .line 825
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_STOPVIDEO"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v5, "stopIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    .line 737
    .end local v3    # "playIntent":Landroid/content/Intent;
    .end local v5    # "stopIntent":Landroid/content/Intent;
    :cond_b
    return-void

    .line 776
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "lockSoundDefaultAttenuation":I
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isWellcomePage()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v7

    goto/16 :goto_0

    :cond_d
    move v6, v8

    goto/16 :goto_0
.end method

.method private shouldPlayVideo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2346
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sdcard/STBYV"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2347
    .local v3, "rootDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2348
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2349
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 2350
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2351
    aget-object v0, v1, v2

    .line 2352
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkIsVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2353
    const/4 v4, 0x1

    return v4

    .line 2350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2358
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    return v5
.end method

.method private shouldWaitForProvisioning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1259
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget v2, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2449
    const v1, 0x1080027

    .line 2448
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2450
    const/4 v1, 0x0

    .line 2448
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2452
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    const v2, 0x7f0902a8

    .line 2448
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    .line 2458
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2459
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2447
    return-void
.end method

.method private showIntelligentHolsterView()V
    .locals 0

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showHolster()V

    .line 2093
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1324
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1325
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1327
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1320
    return-void
.end method

.method private unbindLauncherAnimationService()V
    .locals 3

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimationConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    .line 2480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatorService:Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    .line 2482
    :cond_0
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindLauncherAnimationService mBindLauncherAnimationService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2483
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBindLauncherAnimationService:Z

    .line 2482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1687
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :goto_1
    return-void

    .line 1687
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 1171
    monitor-enter p0

    .line 1172
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1170
    return-void

    .line 1171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 6

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v2

    .line 1177
    .local v2, "inputRestricted":Z
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v4, v2, :cond_0

    .line 1178
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1180
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1181
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1182
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1289
    return-void
.end method

.method private wakeUpAndStartActivityAfterKeyguardExit()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    .line 2373
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzGestureHelper;->getLaunchGestureUnlocked()I

    move-result v0

    .line 2377
    .local v0, "gestureType":I
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "start keyguard exit anination and wake up for slide up gesuter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2379
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x30

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2372
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 1990
    monitor-enter p0

    .line 1991
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 1994
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 1995
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1989
    return-void

    .line 1996
    :catch_0
    move-exception v0

    .line 1997
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onShowingStateChanged or onSimSecureStateChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1990
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1271
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1156
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1158
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 1341
    if-nez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v0

    .line 1341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1124
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 5
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1418
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1419
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/16 v2, 0x9

    invoke-virtual {v4, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1420
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1416
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    .line 1419
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1955
    return-void
.end method

.method public onBootCompleted()V
    .locals 4

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    if-nez v0, :cond_0

    .line 1920
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAutoUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "It is auto update, so goToSleep immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 1928
    monitor-enter p0

    .line 1929
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 1930
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1918
    return-void

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 992
    monitor-enter p0

    .line 993
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 991
    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1003
    monitor-enter p0

    .line 1004
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1002
    return-void

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 897
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 2284
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 959
    monitor-enter p0

    .line 960
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 962
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 964
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 971
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 974
    const-string/jumbo v0, "demoMode"

    const-string/jumbo v1, "onScreenoOn and remove playIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2172
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 5
    .param p1, "why"    # I

    .prologue
    const/4 v4, 0x0

    .line 2217
    monitor-enter p0

    .line 2218
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 2224
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2231
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 2240
    .local v1, "lockImmediately":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 2242
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 2249
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2253
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 2254
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v2, :cond_0

    .line 2255
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    .line 2276
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 2281
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iput-boolean v4, v2, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 2211
    return-void

    .line 2231
    .end local v1    # "lockImmediately":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "lockImmediately":Z
    goto :goto_0

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2217
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockImmediately":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2257
    .restart local v1    # "lockImmediately":Z
    :cond_2
    :try_start_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_3

    .line 2258
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "on screen turned off, we should show keyguard immediately, because it doesn\'t destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 2262
    :cond_3
    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    .line 2263
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 2264
    if-eqz v1, :cond_5

    .line 2272
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_2

    .line 2265
    :cond_5
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "onScreenTurnedOff() - call doKeyguardLaterLocked()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onStartedWakingUp()V
    .locals 1

    .prologue
    .line 2202
    monitor-enter p0

    .line 2203
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 2204
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2207
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 2200
    return-void

    .line 2202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 847
    monitor-enter p0

    .line 849
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 850
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 869
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 873
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 845
    return-void

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 2
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getHolsterStatusBarView()Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addHolsterStatusBarView(Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;)V

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1352
    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2012
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1016
    monitor-enter p0

    .line 1019
    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Not allow third part app to disable keyguard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1021
    return-void

    .line 1024
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1026
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_3

    .line 1027
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    .line 1031
    return-void

    .line 1037
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1038
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1039
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 1015
    return-void

    .line 1040
    :cond_3
    if-eqz p1, :cond_2

    :try_start_3
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_2

    .line 1044
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1045
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1047
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 1050
    :try_start_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1054
    :goto_1
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1057
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1062
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1063
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1065
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    .line 1067
    :try_start_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1068
    :catch_1
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public setOccluded(Z)V
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1133
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1134
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1133
    goto :goto_0
.end method

.method public declared-synchronized showHolster()V
    .locals 10

    .prologue
    monitor-enter p0

    .line 2101
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-nez v1, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 2104
    .local v9, "wm":Landroid/view/WindowManager;
    const v4, 0x4410900

    .line 2115
    .local v4, "flags":I
    const/4 v7, -0x1

    .line 2117
    .local v7, "stretch":I
    const/16 v8, 0x7fc

    .line 2118
    .local v8, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2119
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7fc

    const/4 v5, -0x3

    .line 2118
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2120
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2121
    const v1, 0x7f0c00f9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2122
    const v1, 0x1ffffff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2125
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2126
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2133
    const-string/jumbo v1, "holster"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2137
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2138
    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2139
    new-instance v1, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .line 2140
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2141
    const/4 v1, -0x1

    .line 2142
    const/4 v2, -0x1

    .line 2140
    invoke-direct {v6, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2143
    .local v6, "lp1":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2144
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2147
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "lp1":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "stretch":I
    .end local v8    # "type":I
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-nez v1, :cond_1

    .line 2148
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getHolsterStatusBarView()Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 2150
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->setKeyguardIntelligentHolsterView(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    .line 2151
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addHolsterStatusBarView(Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;)V

    .line 2154
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setVisibility(I)V

    .line 2155
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->show()V

    .line 2157
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setColor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2099
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 832
    monitor-enter p0

    .line 833
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 835
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/MzGestureHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/MzGestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerLidCallback()V

    .line 838
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusbarPadding:I

    .line 839
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 831
    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1950
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 1951
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V

    .line 1950
    const/16 v2, 0x12

    invoke-virtual {v7, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1952
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1949
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 733
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1082
    monitor-enter p0

    .line 1084
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1081
    return-void

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1092
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1096
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1099
    :catch_1
    move-exception v0

    .line 1100
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1105
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1106
    :catch_2
    move-exception v0

    .line 1107
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 4

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2004
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-void
.end method
