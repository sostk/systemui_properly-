.class public abstract Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;,
        Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;
    }
.end annotation


# static fields
.field private static final ACCOUNT_URI:Landroid/net/Uri;

.field protected static mEnmergencyColor:I


# instance fields
.field private final SHAKE_ANIM_STATE_RECOGNIZE_FAIL:I

.field protected mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mCancelKey:Landroid/widget/TextView;

.field protected mCancelKeyAlpha:F

.field protected mConfirmKey:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mFPCountdownTimer:Landroid/os/CountDownTimer;

.field private mFPTimeOutFlag:Z

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field protected mGuestMode:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIsMaxLengthPassword:Z

.field protected mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockoutFlag:Z

.field protected mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRecongnizeFail:Z

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mShakeAnim:Landroid/animation/AnimatorSet;

.field private mShakeAnimState:I

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field switchGuestModeRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mRecongnizeFail:Z

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnimState:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnimState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->shakeAnimNotRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->enterGuestMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;ZIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->startConfirmActivity()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 950
    const-string/jumbo v0, "content://com.meizu.account/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->ACCOUNT_URI:Landroid/net/Uri;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    iput-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mGuestMode:Z

    .line 127
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 129
    iput-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mRecongnizeFail:Z

    .line 155
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnimState:I

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->SHAKE_ANIM_STATE_RECOGNIZE_FAIL:I

    .line 502
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    .line 595
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 171
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 175
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method private enterGuestMode()V
    .locals 7

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->lossMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    return-void

    .line 520
    :cond_0
    const/4 v1, -0x1

    .line 521
    .local v1, "id":I
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 522
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 523
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 524
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .line 528
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_1
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private getPasswordLimit(I)I
    .locals 7
    .param p1, "defaultLenght"    # I

    .prologue
    const/4 v5, 0x0

    .line 712
    const/4 v1, 0x0

    .line 715
    .local v1, "length":I
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 716
    const-string/jumbo v4, "meizu_password_length"

    .line 714
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 718
    if-nez v1, :cond_0

    .line 720
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 719
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 723
    .local v2, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    :try_start_0
    const-string/jumbo v3, "meizu_password_length"

    int-to-long v4, p1

    .line 724
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 722
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    .line 729
    .end local v2    # "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    :goto_0
    return v1

    .line 725
    .restart local v2    # "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleRecogniseError(II)V
    .locals 4
    .param p1, "lockout"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 916
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 917
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 921
    :cond_0
    :try_start_0
    const-string/jumbo v1, "MzKeyguardAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_RECOGNISE_ERROR, timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-lez p2, :cond_1

    .line 923
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleFPAttemptLockout(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_1
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "MzKeyguardAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle MSG_RECOGNISE_ERROR, format exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    goto :goto_0
.end method

.method private handleRecogniseFail()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 887
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 890
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mRecongnizeFail:Z

    .line 892
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    new-array v1, v3, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 898
    sget v1, Lcom/android/keyguard/R$string;->kg_password_instructions:I

    .line 897
    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 899
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRecongnizeFailTime()I

    move-result v0

    if-lt v0, v3, :cond_4

    .line 905
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 906
    sget v1, Lcom/android/keyguard/R$string;->keyguard_fingerprint_not_match:I

    .line 905
    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 907
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->showRecongnizeFailAnim(Landroid/view/View;)V

    goto :goto_0

    .line 903
    :cond_4
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutTimeCount()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 894
    nop

    :array_0
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method private handleRecogniseSuccess(I)V
    .locals 4
    .param p1, "systemMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 860
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 862
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    .line 863
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    .line 864
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnimState:I

    .line 865
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 867
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 869
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 870
    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchSystemMode(I)V

    .line 871
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->enterGuestMode()V

    .line 875
    :goto_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 877
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 878
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, v3}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    .line 857
    return-void

    .line 873
    :cond_3
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchSystemMode(I)V

    goto :goto_0
.end method

.method private isVerifyPasswordLockOut()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 938
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 939
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 940
    invoke-virtual {p0, v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 941
    invoke-virtual {p0, v4}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 942
    return v4

    .line 944
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private lossMode()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 7
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 329
    if-eqz p1, :cond_1

    .line 330
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 331
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 328
    return-void

    .line 333
    :cond_1
    if-eqz p3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v4, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 335
    const/4 v2, 0x3

    .line 336
    .local v2, "leftTimes":I
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyPasswordAndUnlock, processLeftTimes(false), leftTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 345
    if-lez p2, :cond_3

    .line 346
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 347
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 346
    invoke-virtual {v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 348
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 356
    .end local v0    # "deadline":J
    .end local v2    # "leftTimes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->showErrorPasswordAnim(Landroid/view/View;)V

    goto :goto_0

    .line 349
    .restart local v2    # "leftTimes":I
    :cond_3
    if-nez p2, :cond_2

    .line 350
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v3, v4, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method

.method private prepareAndCancelAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->prepareShakeAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 815
    return-void
.end method

.method private shakeAnimNotRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 738
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private startConfirmActivity()V
    .locals 4

    .prologue
    .line 981
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 982
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.meizu.account.VALIDATEPASSWORD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected canGetPasswordLenght()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 708
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getPasswordLimit(I)I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkGuestModePassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mGuestMode:Z

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 494
    const-string/jumbo v2, "mz_guest_mode_password"

    .line 493
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "storedPwd":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    return v1

    .line 499
    .end local v0    # "storedPwd":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected getGuestPwdLength()I
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 556
    const-string/jumbo v2, "mz_guest_mode_password"

    .line 554
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "guestPwd":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 560
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method protected getPasswordLimit()I
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 486
    invoke-direct {p0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getPasswordLimit(I)I

    move-result v0

    .line 487
    .local v0, "pwdLenght":I
    if-nez v0, :cond_0

    move v0, v1

    .end local v0    # "pwdLenght":I
    :cond_0
    return v0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 289
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 13
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->hasFlymeAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-eqz v0, :cond_1

    return-void

    .line 394
    :cond_1
    invoke-virtual {p0, v10}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 396
    .local v6, "elapsedRealtime":J
    iput-boolean v11, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    .line 397
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 398
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    .line 397
    new-array v2, v11, [Ljava/lang/Object;

    .line 399
    sub-long v8, p1, v6

    div-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    .line 397
    invoke-interface {v0, v1, v11, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 400
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;

    sub-long v2, p1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 387
    return-void
.end method

.method protected handleFPAttemptLockout(J)V
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v7, 0x1

    .line 742
    const-string/jumbo v0, "MzKeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFPAttemptLockout timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFPTimeOutFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    if-eqz v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    iput-boolean v7, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    .line 747
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 748
    sget v1, Lcom/android/keyguard/R$string;->kg_fp_too_many_failed_attempts_countdown:I

    .line 747
    new-array v2, v7, [Ljava/lang/Object;

    .line 749
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    .line 747
    invoke-interface {v0, v1, v7, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 750
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;

    mul-long v2, p1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 741
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 566
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 586
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 568
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleRecogniseSuccess(I)V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleRecogniseFail()V

    goto :goto_0

    .line 576
    :pswitch_2
    const/16 v1, 0x1e

    .line 578
    .local v1, "timeout":I
    :try_start_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleRecogniseError(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasFlymeAccount()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 966
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 967
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const/4 v0, 0x1

    return v0

    .line 970
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_1
    return v8

    .line 972
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 973
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 974
    return v8
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 476
    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 475
    return-void
.end method

.method protected initThemeValues()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    .line 693
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getEmergencyColor()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEnmergencyColor:I

    .line 691
    return-void
.end method

.method public isOpenFindLock()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 670
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 671
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v3, "com.meizu.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 672
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 674
    :cond_0
    return v5

    .line 677
    :cond_1
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "com.meizu.flyme.FindPhone"

    .line 676
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 679
    .local v2, "state":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 680
    const/4 v3, 0x1

    return v3

    .line 682
    :cond_2
    return v5
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 248
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    .line 249
    .local v0, "isSaveMode":Z
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->initThemeValues()V

    .line 253
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->setThemeValues()V

    .line 254
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 254
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 246
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 261
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 263
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 264
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 266
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mIsMaxLengthPassword:Z

    .line 267
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 269
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 271
    :cond_1
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    .line 272
    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnimState:I

    .line 274
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 276
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPCountdownTimer:Landroid/os/CountDownTimer;

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 259
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 733
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 208
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 210
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 211
    sget v2, Lcom/android/keyguard/R$id;->emergency_carrier_area:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 212
    sget v2, Lcom/android/keyguard/R$id;->confirm_password:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    .line 213
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mConfirmKey:Landroid/widget/TextView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$3;

    invoke-direct {v3, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$3;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v2, Lcom/android/keyguard/R$id;->cancel:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    .line 219
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;

    invoke-direct {v3, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    iput v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    .line 228
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 233
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_easy_mode_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    .line 237
    const-string/jumbo v3, "user"

    .line 236
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mUserManager:Landroid/os/UserManager;

    .line 238
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGuestModeEnable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mGuestMode:Z

    .line 239
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->bouncer_emergency_call_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    .line 240
    .local v1, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v1, :cond_2

    .line 241
    invoke-virtual {v1, p0}, Lcom/android/keyguard/EmergencyButton;->setCallBack(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 207
    :cond_2
    return-void
.end method

.method protected onGuestMode()V
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 515
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchGuestModeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 513
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 440
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 442
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mRecongnizeFail:Z

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 437
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mRecongnizeFail:Z

    if-eqz v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->reset()V

    .line 447
    return-void

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mFPTimeOutFlag:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->enter_password:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 592
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendAbsWindowFocusChange(Z)V

    .line 590
    return-void
.end method

.method public prepareShakeAnim()Landroid/animation/AnimatorSet;
    .locals 7

    .prologue
    .line 374
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 375
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3f3ae148    # 0.73f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 376
    .local v1, "pathInterpolator":Landroid/view/animation/PathInterpolator;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->error_anim:I

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 377
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 379
    return-object v2
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 188
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 190
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 191
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockoutFlag:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 187
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetState()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 178
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 184
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 182
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected setThemeValues()V
    .locals 3

    .prologue
    .line 697
    sget v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEnmergencyColor:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    .line 699
    const-string/jumbo v0, "MzKeyguardAbsKeyInputView"

    const-string/jumbo v1, "mEcaView instanceof EmergencyCarrierArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEnmergencyColor:I

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierColor(IF)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    sget v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEnmergencyColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKeyAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 696
    :cond_1
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 470
    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 469
    return-void
.end method

.method protected showErrorPasswordAnim(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->prepareAndCancelAnim(Landroid/view/View;)V

    .line 365
    if-eqz p1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 367
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 363
    :cond_0
    return-void

    .line 368
    nop

    :array_0
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method protected showRecongnizeFailAnim(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->prepareAndCancelAnim(Landroid/view/View;)V

    .line 779
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    if-eqz p1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 809
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 777
    :cond_0
    return-void

    .line 810
    nop

    :array_0
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method protected switchSystemMode(I)V
    .locals 4
    .param p1, "systemMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 843
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentSystemMode()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 844
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentSystemMode(I)V

    .line 845
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_private_mode_running"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 847
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "meizu.intent.action.SWITCH_PRIVATE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string/jumbo v2, "extra_mode_on"

    if-ne p1, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 848
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    const-string/jumbo v2, "MzKeyguardAbsKeyInputView"

    const-string/jumbo v3, "verifyPasswordAndUnlock()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mIsMaxLengthPassword:Z

    .line 295
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "entry":Ljava/lang/String;
    const/4 v1, 0x0

    .line 298
    .local v1, "isLockOut":Z
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->isVerifyPasswordLockOut()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 307
    invoke-direct {p0, v4, v4, v4}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onPasswordChecked(ZIZ)V

    .line 308
    return-void

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 314
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUserId()I

    move-result v3

    .line 315
    new-instance v4, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;

    invoke-direct {v4, p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    .line 311
    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 292
    return-void
.end method

.method protected verifyPrivacyPasswordAndUnlock()Z
    .locals 6

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "entry":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 827
    const/4 v3, 0x2

    .line 826
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result v1

    .line 828
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    .line 830
    new-instance v2, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;

    invoke-direct {v2, p0, v1, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;-><init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;ZLjava/lang/String;)V

    .line 836
    const-wide/16 v4, 0x28

    .line 830
    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 839
    :cond_0
    return v1
.end method
