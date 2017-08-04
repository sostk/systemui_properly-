.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$3;
    }
.end annotation


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPluggedIn:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestingIndication:Ljava/lang/String;

.field private mShakeAnim:Landroid/animation/AnimatorSet;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mTransientIndication:Ljava/lang/String;

.field private mUnlockText:Ljava/lang/String;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPluggedIn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->startFadeInAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 242
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 85
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 86
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVibrator:Landroid/os/Vibrator;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 80
    return-void
.end method

.method private canStartAnimator()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    .line 397
    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 399
    goto :goto_0
.end method

.method private computeIndication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object v0
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 403
    const-string/jumbo v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    const-string/jumbo v2, ", isScreenOn = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    const-string/jumbo v2, ", isKeyguardBouncer = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    const-string/jumbo v2, ", isMusicViewShow = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    const-string/jumbo v2, ", isChargingViewShow = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    const-string/jumbo v2, ", getUnlockTimes = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    const-string/jumbo v2, ", isSmartLock = "

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method private startFadeInAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 413
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "startFadeInAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 421
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 412
    return-void
.end method

.method private startFadeOutAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 427
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "startFadeOutAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v0, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 426
    :cond_2
    return-void
.end method

.method private updateIndication()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 505
    :cond_2
    return-void
.end method

.method public cancelHideTransientIndication()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    return-void
.end method

.method public changeUnlockTextLanguage()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 282
    return-void
.end method

.method public checkIndicationStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 375
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "checkIndicationStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canStartAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    .line 374
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    .line 377
    if-eqz v0, :cond_0

    .line 382
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    goto :goto_0
.end method

.method public forceShowIndication()V
    .locals 2

    .prologue
    .line 389
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "forceShowIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->cancelAnimator()V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 388
    return-void
.end method

.method public hideTransientIndication()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 143
    :cond_2
    return-void
.end method

.method public hideTransientIndication(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    .line 495
    const-string/jumbo v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideTransientIndication anim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz p1, :cond_1

    .line 497
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->startFadeOutAnimation()V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    goto :goto_0
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    return-void
.end method

.method public onMusicVisibleChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    .line 351
    const-string/jumbo v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMusicVisibleChanged visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    .line 350
    :goto_0
    return-void

    .line 356
    :cond_0
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    goto :goto_0
.end method

.method public onNotificationCountChaned(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    .line 361
    const-string/jumbo v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationCountChaned visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 363
    if-eqz p1, :cond_1

    .line 364
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    goto :goto_0
.end method

.method public prepareShakeAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 342
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3f3ae148    # 0.73f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 343
    .local v1, "pathInterpolator":Landroid/view/animation/PathInterpolator;
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f050006

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 344
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 347
    return-object v2
.end method

.method public resetIndication()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    .line 295
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->fingerprintUsedAsUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 270
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 98
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showRecongnizeFailAnim(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "hintFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 306
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "showRecongnizeFailAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->prepareShakeAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 305
    :cond_1
    return-void

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 335
    :array_0
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public showTransientIndication(IZJ)V
    .locals 3
    .param p1, "transientIndication"    # I
    .param p2, "anim"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 488
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 487
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 2
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 134
    return-void
.end method

.method public showTransientIndication(ZJ)V
    .locals 4
    .param p1, "anim"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 464
    const-string/jumbo v0, "KeyguardIndicationController"

    const-string/jumbo v1, "showTransientIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump()V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 468
    :cond_0
    if-eqz p1, :cond_4

    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canStartAnimator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 477
    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    goto :goto_0
.end method

.method public updateIndicationShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 287
    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isChargingViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMusicViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    goto :goto_0
.end method
