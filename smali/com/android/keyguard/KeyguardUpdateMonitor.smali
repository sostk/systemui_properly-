.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneReceiver;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SmartLockRecevier;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$1;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$2;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$3;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$4;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$5;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$6;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$7;
    }
.end annotation


# static fields
.field private static final MZ_EASY_MODE_RUI:Landroid/net/Uri;

.field private static final MZ_FP_USE_UNLOCK_URI:Landroid/net/Uri;

.field private static final MZ_SAVE_MODE_RUI:Landroid/net/Uri;

.field private static final PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

.field private static final PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

.field private static mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private static mFindPhoneLocked:Z

.field private static mIsSmartLock:Z

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private final KEY_UNLOCK_TIMES:Ljava/lang/String;

.field private final PREF_KEYGUARD:Ljava/lang/String;

.field private mAbsHasWindowFocus:Z

.field private mAlternateUnlockEnabled:Z

.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCacheInfo:Lcom/meizu/keyguard/utils/CacheInfoUtils;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChargingMaskShow:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSystemMode:I

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mEasyMode:Z

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mFindPhoneCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintDetectionRunning:Z

.field private mFingerprintUsedAsUnlock:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHolsterMode:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardIsVisible:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mPhoneState:I

.field private mPrivateModeEnable:Z

.field private mRecongnizeFailTime:I

.field private mRingMode:I

.field private mScreenOn:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUnLockTime:I

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mWaitWellcomPage:Z

.field private mWellcomePageObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_EASY_MODE_RUI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_FP_USE_UNLOCK_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitWellcomPage:Z

    return v0
.end method

.method static synthetic -get11()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_SAVE_MODE_RUI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get6()Lcom/meizu/findphone/FindPhoneAbstract;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneLocked:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRecongnizeFailTime:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAbsHasWindowFocus:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneLocked:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRecongnizeFailTime:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitWellcomPage:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldWaitForWellcomePage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "fingerprintId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintProcessed(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintUsedAsUnlockChanged()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "bouncer"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "showing"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/keyguard/KeyguardUpdateMonitor;III)V
    .locals 0
    .param p1, "isLight"    # I
    .param p2, "level"    # I
    .param p3, "color"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockWallpaperColorChanged(III)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "isLight"    # I
    .param p3, "bright"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleMusicColorChanged(III)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleNotificationPanleBlurColorChanged()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePrivateModeEnableChange()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePrivateModeRunningChange()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSaveModeChange()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSmartLock(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleChargingMaskChange(Z)V

    return-void
.end method

.method static synthetic -wrap30(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleWallpaperColorChanged(I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleEasyModeChange()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFindPhoneLock()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFindPhoneUnlock()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 1678
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneLocked:Z

    .line 2059
    const-string/jumbo v0, "mz_easy_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_EASY_MODE_RUI:Landroid/net/Uri;

    .line 2060
    const-string/jumbo v0, "mz_current_power_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_SAVE_MODE_RUI:Landroid/net/Uri;

    .line 2061
    const-string/jumbo v0, "mz_private_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    .line 2062
    const-string/jumbo v0, "mz_private_mode_running"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    .line 2063
    const-string/jumbo v0, "mz_fingerprint_use_unlock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_FP_USE_UNLOCK_URI:Landroid/net/Uri;

    .line 106
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 173
    iput v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 174
    iput v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    iput-boolean v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHolsterMode:Z

    .line 202
    iput v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRecongnizeFailTime:I

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    .line 213
    const-string/jumbo v0, "unlock_times"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->KEY_UNLOCK_TIMES:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "pref_keyguard"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PREF_KEYGUARD:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 365
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 373
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 374
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 375
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 580
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 582
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 1597
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    .line 1676
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1896
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1895
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1938
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 2065
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 2296
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 2295
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 833
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 834
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 835
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 836
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldWaitForWellcomePage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitWellcomPage:Z

    .line 839
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 844
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v1, 0x64

    invoke-direct {v0, v11, v1, v12, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 845
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitWellcomPage:Z

    if-eqz v0, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForWellcomePage()V

    .line 850
    :cond_1
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 851
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string/jumbo v0, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 862
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 863
    .local v6, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 864
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 868
    .local v3, "allUserFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string/jumbo v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string/jumbo v0, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string/jumbo v0, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 876
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 878
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 879
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 878
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 907
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "mz_current_power_mode"

    .line 906
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 907
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 906
    invoke-virtual {v10, v0, v12, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 913
    const-string/jumbo v0, "mz_easy_mode"

    .line 912
    invoke-static {v10, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v11

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEasyMode:Z

    .line 915
    const-string/jumbo v0, "mz_easy_mode"

    .line 914
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 914
    invoke-virtual {v10, v0, v12, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 918
    const-string/jumbo v0, "mz_private_mode"

    .line 917
    invoke-static {v10, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrivateModeEnable:Z

    .line 920
    const-string/jumbo v0, "mz_private_mode_running"

    .line 919
    invoke-static {v10, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v9, 0x1

    .line 921
    .local v9, "isPrivateMode":Z
    :goto_3
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_ENABLE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v0, v12, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 922
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->PRIVATE_MODE_RUNNING_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v0, v12, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 923
    if-eqz v9, :cond_6

    move v0, v11

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentSystemMode(I)V

    .line 924
    const-string/jumbo v0, "trust"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 925
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 927
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 928
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 935
    const-string/jumbo v1, "mz_fingerprint_use_unlock"

    .line 934
    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_7

    :goto_5
    iput-boolean v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUsedAsUnlock:Z

    .line 936
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->MZ_FP_USE_UNLOCK_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v0, v12, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 937
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setLocalValues()V

    .line 938
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTheme()V

    .line 940
    new-instance v0, Lcom/meizu/keyguard/utils/CacheInfoUtils;

    invoke-direct {v0, p1}, Lcom/meizu/keyguard/utils/CacheInfoUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCacheInfo:Lcom/meizu/keyguard/utils/CacheInfoUtils;

    .line 832
    return-void

    .line 897
    .end local v9    # "isPrivateMode":Z
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 899
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    move v0, v12

    .line 912
    goto/16 :goto_1

    :cond_4
    move v0, v12

    .line 917
    goto :goto_2

    .line 919
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isPrivateMode":Z
    goto :goto_3

    :cond_6
    move v0, v12

    .line 923
    goto :goto_4

    :cond_7
    move v11, v12

    .line 934
    goto :goto_5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 778
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 781
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getSystemModeByFingerId(I)I
    .locals 4
    .param p1, "fingerId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2037
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2038
    const-string/jumbo v2, "mz_fp_id_secrets_mode"

    .line 2036
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2039
    .local v0, "saveFpId":I
    if-ne v0, p1, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPrivateModeEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2041
    const/4 v1, 0x1

    return v1

    .line 2045
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2046
    const-string/jumbo v2, "mz_fp_id_guest_mode"

    .line 2044
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2047
    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGuestModeEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2048
    const/4 v1, 0x2

    return v1

    .line 2051
    :cond_1
    return v3
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 1151
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1153
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1154
    if-eqz v0, :cond_1

    .line 1155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1156
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1157
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1158
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1155
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1150
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private handleChargingMaskChange(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 2220
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 2221
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2222
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2223
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2224
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onChargingViewMaskChanged(Z)V

    .line 2221
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2219
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 1206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1207
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1208
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleEasyModeChange()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2086
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2087
    const-string/jumbo v5, "mz_easy_mode"

    .line 2086
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEasyMode:Z

    .line 2088
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 2089
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2090
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2092
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 2093
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEasyMode:Z

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEasyModeChanged(Z)V

    .line 2089
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2085
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 525
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    .line 523
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFindPhoneLock()V
    .locals 3

    .prologue
    .line 1660
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1661
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 1662
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;
    if-eqz v0, :cond_0

    .line 1663
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;->onSecurityLock()V

    .line 1660
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1659
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;
    :cond_1
    return-void
.end method

.method private handleFindPhoneUnlock()V
    .locals 3

    .prologue
    .line 1668
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1669
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 1670
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;
    if-eqz v0, :cond_0

    .line 1671
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;->onSecurityUnlock()V

    .line 1668
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1667
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;
    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .prologue
    .line 1828
    if-eqz p1, :cond_0

    .line 1829
    return-void

    .line 1827
    :cond_0
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    .prologue
    .line 1819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1820
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1821
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintFail()V

    .line 1819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1818
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 7
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    const/4 v6, 0x0

    .line 2184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    .local v2, "userId":I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->fingerprintUsedAsUnlock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2190
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 2191
    return-void

    .line 2185
    .end local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 2186
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "Failed to get current user id: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2200
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 2187
    return-void

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "userId":I
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSystemModeByFingerId(I)I

    move-result v1

    .line 2197
    .local v1, "systemMode":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2200
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 2180
    return-void

    .line 2198
    .end local v1    # "systemMode":I
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    .line 2200
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 2198
    throw v3
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 1865
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 1867
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1868
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1869
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1870
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 1867
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1862
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 1854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1855
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1856
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1857
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    .line 1854
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1853
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 0

    .prologue
    .line 2304
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2303
    return-void
.end method

.method private handleFingerprintProcessed(I)V
    .locals 6
    .param p1, "fingerprintId"    # I

    .prologue
    .line 488
    if-nez p1, :cond_0

    return-void

    .line 492
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 493
    .end local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "Failed to get current user id: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    return-void

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "userId":I
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 487
    .local v1, "res":Landroid/content/ContentResolver;
    return-void
.end method

.method private handleFingerprintUsedAsUnlockChanged()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2135
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2136
    const-string/jumbo v6, "mz_fingerprint_use_unlock"

    .line 2135
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUsedAsUnlock:Z

    .line 2137
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 2138
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2139
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2140
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2141
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUsedAsUnlock:Z

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintUsedAsUnlockChanged(Z)V

    .line 2138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    move v3, v4

    .line 2135
    goto :goto_0

    .line 2134
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 4
    .param p1, "bouncer"    # I

    .prologue
    .line 1236
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 1237
    .local v2, "isBouncer":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 1238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1239
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1240
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 1238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1236
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isBouncer":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isBouncer":Z
    goto :goto_0

    .line 1244
    .restart local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1234
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 0

    .prologue
    .line 2288
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2287
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 4
    .param p1, "showing"    # I

    .prologue
    .line 1219
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 1220
    .local v2, "isShowing":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 1221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1222
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1223
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 1221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1219
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isShowing":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isShowing":Z
    goto :goto_0

    .line 1227
    .restart local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1217
    return-void
.end method

.method private handleLockWallpaperColorChanged(III)V
    .locals 2
    .param p1, "isLight"    # I
    .param p2, "level"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v0, 0x1

    .line 1725
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, p3, v0, p2}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->setKeyguardColor(IZI)V

    .line 1726
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateColors()V

    .line 1724
    return-void

    .line 1725
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMusicColorChanged(III)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "isLight"    # I
    .param p3, "bright"    # I

    .prologue
    const/4 v0, 0x1

    .line 1741
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, p1, v0, p3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->setMusicColor(IZI)V

    .line 1742
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateColorsOnNotificationPanel()V

    .line 1740
    return-void

    .line 1741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNotificationPanleBlurColorChanged()V
    .locals 0

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateColorsOnNotificationPanel()V

    .line 1737
    return-void
.end method

.method private handlePrivateModeEnableChange()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2117
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2118
    const-string/jumbo v2, "mz_private_mode"

    .line 2117
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrivateModeEnable:Z

    .line 2116
    return-void
.end method

.method private handlePrivateModeRunningChange()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2125
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2126
    const-string/jumbo v3, "mz_private_mode_running"

    .line 2125
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2127
    .local v0, "isPrivateMode":Z
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentSystemMode(I)V

    .line 2124
    return-void

    .line 2125
    .end local v0    # "isPrivateMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPrivateMode":Z
    goto :goto_0
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    .prologue
    .line 1251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1252
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1253
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 1251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleSaveModeChange()V
    .locals 6

    .prologue
    .line 2102
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 2103
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2104
    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2106
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2107
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPowerSaveModeChanged(Z)V

    .line 2108
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockWallpaperColorChanged()V

    .line 2103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2101
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1170
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSimStateChange(subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1171
    const-string/jumbo v6, ", state="

    .line 1170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1171
    const-string/jumbo v6, ")"

    .line 1170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1175
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    const-string/jumbo v5, "invalid subId in handleSimStateChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1179
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1181
    .local v2, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v2, :cond_2

    .line 1182
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 1183
    .restart local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const/4 v1, 0x1

    .line 1191
    .local v1, "changed":Z
    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v4, :cond_5

    .line 1192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1193
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1194
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1192
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1186
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "changed":Z
    .end local v3    # "i":I
    :cond_2
    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_3

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-eq v4, p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1187
    .restart local v1    # "changed":Z
    :goto_2
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1188
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 1189
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    goto :goto_0

    .line 1186
    .end local v1    # "changed":Z
    :cond_4
    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v4, p2, :cond_3

    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_2

    .line 1167
    :cond_5
    return-void
.end method

.method private handleSmartLock(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1974
    sget-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSmartLock:Z

    if-ne p1, v2, :cond_1

    move v4, v2

    :goto_0
    if-eq v5, v4, :cond_3

    .line 1975
    if-ne p1, v2, :cond_2

    :goto_1
    sput-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSmartLock:Z

    .line 1977
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1978
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1979
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1980
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSmartLock:Z

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSmartLockStatusChange(Z)V

    .line 1977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_1
    move v4, v3

    .line 1974
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1975
    goto :goto_1

    .line 1973
    :cond_3
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 3

    .prologue
    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1141
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 826
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 824
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleWallpaperColorChanged(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 1729
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 1730
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1731
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1732
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onWallpaperColorChanged(I)V

    .line 1730
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1728
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 6
    .param p0, "old"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v5, 0x1

    .line 1276
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1277
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1279
    .local v2, "wasPluggedIn":Z
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1280
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 1283
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_3

    .line 1284
    :cond_0
    return v5

    .line 1280
    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "stateChangedWhilePluggedIn":Z
    goto :goto_0

    .line 1279
    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "stateChangedWhilePluggedIn":Z
    goto :goto_0

    .line 1288
    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_4

    .line 1289
    return v5

    .line 1293
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_5

    .line 1294
    return v5

    .line 1296
    :cond_5
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 963
    const-string/jumbo v2, "device_provisioned"

    .line 962
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 558
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 559
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 3
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    .line 1522
    move-object v0, p0

    .line 1523
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v2, :cond_0

    .line 1524
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return v1

    .line 1525
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 537
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 538
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_2

    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, "disabledByGlobalActions":Z
    const/4 v2, 0x0

    .line 546
    .local v2, "disabledBySettings":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    .line 548
    .local v3, "disabledBySimPin":Z
    invoke-virtual {v4, v8, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 550
    .local v0, "disabledByDpm":Z
    :goto_0
    if-nez v0, :cond_1

    .end local v3    # "disabledBySimPin":Z
    :goto_1
    return v3

    .line 548
    .end local v0    # "disabledByDpm":Z
    .restart local v3    # "disabledBySimPin":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disabledByDpm":Z
    goto :goto_0

    .line 550
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 553
    .end local v0    # "disabledByDpm":Z
    .end local v1    # "disabledByGlobalActions":Z
    .end local v2    # "disabledBySettings":Z
    .end local v3    # "disabledBySimPin":Z
    :cond_2
    return v7
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 3

    .prologue
    .line 1883
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1884
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1885
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1886
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    .line 1883
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1882
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private onFingerprintAuthenticated(IIZ)V
    .locals 3
    .param p1, "systemMode"    # I
    .param p2, "userId"    # I
    .param p3, "wakeAndUnlocking"    # Z

    .prologue
    .line 2172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2173
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2174
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2175
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(IIZ)V

    .line 2172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2171
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 1499
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 1500
    .local v5, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 1503
    .local v3, "simState":I
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1508
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1510
    .local v1, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v1, :cond_0

    .line 1511
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v1, v4, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 1512
    .restart local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const/4 v0, 0x1

    .line 1518
    .local v0, "changed":Z
    :goto_1
    return v0

    .line 1504
    .end local v0    # "changed":Z
    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_0
    move-exception v2

    .line 1505
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1515
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v4, :cond_1

    const/4 v0, 0x1

    .line 1516
    .restart local v0    # "changed":Z
    :goto_2
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 1515
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1342
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1343
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1344
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1345
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1346
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 1347
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1348
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1349
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1350
    .local v2, "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1340
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    .end local v2    # "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    return-void
.end method

.method private setFingerprintRunningDetectionRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 1876
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-eq p1, v0, :cond_0

    .line 1877
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    .line 1878
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    .line 1875
    :cond_0
    return-void
.end method

.method private shouldListenForFingerprint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1776
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAbsHasWindowFocus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDonePending:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldWaitForWellcomePage()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2267
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2268
    return v3

    .line 2270
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wellcome_page_version"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2271
    .local v0, "version":I
    if-nez v0, :cond_1

    return v4

    .line 2273
    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2274
    return v4

    .line 2276
    :cond_2
    return v3
.end method

.method private startListeningForFingerprint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1781
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1782
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerPrintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1788
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1789
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 1790
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 1779
    :cond_1
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 1

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1805
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 1799
    return-void
.end method

.method private updateColors()V
    .locals 4

    .prologue
    .line 943
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 944
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 945
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 946
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockWallpaperColorChanged()V

    .line 944
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private updateColorsOnNotificationPanel()V
    .locals 4

    .prologue
    .line 952
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 953
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 954
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 955
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onNotificationPanleBlurColorChanged()V

    .line 953
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 2

    .prologue
    .line 1767
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 1768
    .local v0, "shouldListenForFingerprint":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 1770
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1771
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    .line 1766
    :cond_1
    :goto_0
    return-void

    .line 1769
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 967
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 979
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 980
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 981
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 979
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 985
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 986
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 987
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 988
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 966
    :cond_0
    return-void
.end method

.method private watchForWellcomePage()V
    .locals 4

    .prologue
    .line 2252
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWellcomePageObserver:Landroid/database/ContentObserver;

    .line 2261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2262
    const-string/jumbo v1, "wellcome_page_version"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2263
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWellcomePageObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 2261
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2251
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1419
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1420
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1421
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRecongnizeFailTime:I

    .line 1423
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, "token":[B
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 1418
    .end local v0    # "token":[B
    :cond_0
    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1430
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1044
    return-void
.end method

.method public dispatchScreenTurndOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, 0x0

    .line 1542
    monitor-enter p0

    .line 1543
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1541
    return-void

    .line 1542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    .prologue
    .line 1535
    monitor-enter p0

    .line 1536
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1534
    return-void

    .line 1535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchSetBackground(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 814
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 815
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 816
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 817
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSetBackground(Landroid/graphics/Bitmap;)V

    .line 815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 812
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public fingerprintUsedAsUnlock()Z
    .locals 3

    .prologue
    .line 1932
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usedAsUnlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUsedAsUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintUsedAsUnlock:Z

    return v0
.end method

.method public getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    return-object v0
.end method

.method public getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object v0
.end method

.method public getCurrentSystemMode()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSystemMode:I

    return v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCacheInfo:Lcom/meizu/keyguard/utils/CacheInfoUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/utils/CacheInfoUtils;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 1415
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLockoutTimeCount()I
    .locals 1

    .prologue
    .line 2022
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1451
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1558
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    .line 1559
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, -0x1

    .line 1560
    .local v5, "resultId":I
    const v0, 0x7fffffff

    .line 1561
    .local v0, "bestSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 1562
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1563
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1564
    .local v2, "id":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 1565
    .local v6, "slotId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_0

    if-le v0, v6, :cond_0

    .line 1566
    move v5, v2

    .line 1567
    move v0, v6

    .line 1561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1570
    .end local v2    # "id":I
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "slotId":I
    :cond_1
    return v5
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1443
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getRecongnizeFailTime()I
    .locals 1

    .prologue
    .line 2001
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRecongnizeFailTime:I

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 1479
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getSlotId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    return v0

    .line 1487
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .param p1, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 453
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 456
    :cond_1
    if-nez v0, :cond_2

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1

    .line 460
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1574
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 1575
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1576
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1577
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v1

    .line 1575
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1579
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getUnlockTimes()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2234
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    if-gez v1, :cond_0

    .line 2235
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2236
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "unlock_times"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    .line 2238
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    return v1
.end method

.method public getUserHasTrust(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 564
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 1052
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_0

    return-void

    .line 1053
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 1054
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->initObserver(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1055
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1056
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1057
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 1055
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 998
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 999
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1000
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 998
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 997
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1087
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1088
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1089
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 1087
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 1095
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1096
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1086
    :cond_2
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 1105
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1112
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1113
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1114
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1115
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1107
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1108
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1109
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1103
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1125
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 1126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1128
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleScreenTurnedOff(I)V
    .locals 4
    .param p1, "arg1"    # I

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 799
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 800
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 801
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 802
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    .line 800
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 796
    return-void
.end method

.method protected handleScreenTurnedOn()V
    .locals 4

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 787
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 788
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 789
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 790
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 788
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleSimSubscriptionInfoChanged()V
    .locals 14

    .prologue
    .line 410
    const-string/jumbo v11, "KeyguardUpdateMonitor"

    const-string/jumbo v12, "onSubscriptionInfoChanged()"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 412
    .local v7, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_0

    .line 413
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 414
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string/jumbo v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SubInfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v11, "KeyguardUpdateMonitor"

    const-string/jumbo v12, "onSubscriptionInfoChanged: list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v10

    .line 425
    .local v10, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v2, "changedSubscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 427
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 428
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v1

    .line 429
    .local v1, "changed":Z
    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    .end local v1    # "changed":Z
    .end local v5    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    .line 434
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 435
    .local v3, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_5

    .line 436
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 437
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_4

    .line 438
    iget v11, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v12, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v13, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 435
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 433
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 442
    .end local v3    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v6    # "j":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 443
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 444
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_7

    .line 445
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 442
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 408
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_8
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1075
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1077
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 1075
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1028
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 1029
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1030
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1031
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1032
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 1030
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1027
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1010
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 1011
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1012
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1013
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1014
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1012
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_1
    return-void

    .line 1020
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1455
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isChargingMaskShow()Z
    .locals 1

    .prologue
    .line 2230
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mChargingMaskShow:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isEasyMode()Z
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEasyMode:Z

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFindPhoneLocked()Z
    .locals 1

    .prologue
    .line 1996
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneLocked:Z

    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    return v0
.end method

.method public isGuestModeEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2206
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2207
    const-string/jumbo v2, "mz_guard_mode"

    .line 2206
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2207
    const/4 v2, 0x1

    .line 2206
    if-ne v1, v2, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    .line 2206
    :cond_0
    return v0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2029
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 2030
    .local v0, "callState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2031
    if-ne v0, v1, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return v1

    .line 2031
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardBouncer()Z
    .locals 1

    .prologue
    .line 1268
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    return v0
.end method

.method public isPrivateModeEnable()Z
    .locals 1

    .prologue
    .line 2156
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrivateModeEnable:Z

    return v0
.end method

.method public isSaveMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2147
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2148
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x2

    .line 2147
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2148
    const/4 v2, 0x3

    .line 2147
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1469
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1470
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 1472
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v3
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isSmartLock()Z
    .locals 1

    .prologue
    .line 1987
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSmartLock:Z

    return v0
.end method

.method public isUnlockWithFingerPrintPossible(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1795
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->fingerprintUsedAsUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1795
    :cond_0
    return v0
.end method

.method public isWellcomePage()Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitWellcomPage:Z

    return v0
.end method

.method public onLockBlurChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x205

    .line 1711
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1712
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1710
    return-void
.end method

.method public onLockWallPaperChanged(ZII)V
    .locals 5
    .param p1, "isLight"    # Z
    .param p2, "bright"    # I
    .param p3, "color"    # I

    .prologue
    const/16 v4, 0x204

    .line 1706
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 1708
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1707
    invoke-virtual {v2, v4, v0, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1708
    const-wide/16 v2, 0xa

    .line 1707
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1705
    return-void

    .line 1708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMusicStateChanged(IZI)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "isLight"    # Z
    .param p3, "bright"    # I

    .prologue
    const/16 v4, 0x206

    .line 1715
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1716
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 1717
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xa

    .line 1716
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1714
    return-void

    .line 1717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrustChanged(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 398
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 400
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 467
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 471
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public onWallPaperChanged(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v3, 0x20d

    .line 1720
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 1722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1721
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1719
    return-void
.end method

.method public openDesktopMask()Z
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->openDesktopMask()Z

    move-result v0

    return v0
.end method

.method public openLockMask()Z
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->openLockMask()Z

    move-result v0

    return v0
.end method

.method public recordUnlockTimes()V
    .locals 5

    .prologue
    .line 2242
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 2243
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    .line 2244
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2245
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2246
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "unlock_times"

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUnLockTime:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2241
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1329
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1332
    return-void

    .line 1328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1325
    return-void
.end method

.method public registerFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .prologue
    .line 1637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1638
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1641
    return-void

    .line 1637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1644
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1634
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1313
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1311
    :cond_1
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2
    .param p1, "bypassHandler"    # Z

    .prologue
    .line 1399
    if-nez p1, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1398
    :goto_0
    return-void

    .line 1402
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1446
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1434
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1385
    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportSimUnlocked(subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1387
    .local v0, "slotId":I
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1384
    return-void
.end method

.method public resetSmartLockFlag()V
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSmartLock:Z

    .line 1990
    return-void
.end method

.method public sendAbsWindowFocusChange(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2006
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x147

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2007
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2008
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2004
    return-void

    .line 2007
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "showingBouncer"    # Z

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1367
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1368
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1364
    return-void

    .line 1367
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardModelChange()V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2011
    return-void
.end method

.method public sendKeyguardReset()V
    .locals 2

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x149

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2291
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1357
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1358
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1354
    return-void

    .line 1357
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1459
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 1458
    return-void
.end method

.method public setCurrentSystemMode(I)V
    .locals 0
    .param p1, "currentSystemMode"    # I

    .prologue
    .line 2164
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSystemMode:I

    .line 2163
    return-void
.end method

.method public setFindPhoneUtils(Lcom/meizu/findphone/FindPhoneAbstract;)V
    .locals 0
    .param p1, "findPhoneAbstract"    # Lcom/meizu/findphone/FindPhoneAbstract;

    .prologue
    .line 1685
    sput-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 1684
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1680
    return-void
.end method

.method public updateFindPhoneState()V
    .locals 1

    .prologue
    .line 2016
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    if-eqz v0, :cond_0

    .line 2017
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFindPhoneLocked:Z

    .line 2015
    :cond_0
    return-void
.end method

.method public updateKeyguardDonePending(Z)V
    .locals 1
    .param p1, "keyguardDonePending"    # Z

    .prologue
    .line 2313
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDonePending:Z

    if-eq v0, p1, :cond_0

    .line 2314
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardDonePending:Z

    .line 2315
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2312
    :cond_0
    return-void
.end method

.method public updateTheme()V
    .locals 4

    .prologue
    .line 1755
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 1756
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1757
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1758
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->resetDefaultColors()V

    .line 1760
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onThemeChanged()V

    .line 1756
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1754
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public usedDefaultColor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1745
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->useSystemUIAutoColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return v0

    .line 1746
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
