.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mFirstUpdate:Z

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastOccluded:Z

.field private mLastShowing:Z

.field private mLipOpen:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private mOccluded:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mScreenOn:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShowing:Z

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUpdateStateRunnable:Ljava/lang/Runnable;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "StatusBarKeyguardViewManager"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLipOpen:Z

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateStateRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 82
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 342
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 339
    :cond_0
    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    .line 393
    :cond_0
    const-wide/16 v0, 0x140

    return-wide v0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 148
    return-void
.end method

.method private showBouncerOrKeyguard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 129
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguard()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateStateRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(ZZLjava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    goto :goto_0
.end method

.method private updateStates()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 405
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v5

    .line 406
    .local v5, "vis":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 407
    .local v3, "showing":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 408
    .local v2, "occluded":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    .line 409
    .local v1, "bouncerShowing":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v0, 0x0

    .line 411
    .local v0, "bouncerDismissible":Z
    :goto_0
    if-nez v0, :cond_10

    if-eqz v3, :cond_10

    move v6, v8

    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_11

    move v9, v8

    :goto_2
    if-ne v6, v9, :cond_0

    .line 412
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 411
    if-eqz v6, :cond_1

    .line 413
    :cond_0
    if-nez v0, :cond_12

    if-eqz v3, :cond_12

    .line 416
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v9, 0x400000

    or-int/2addr v9, v5

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 419
    :cond_1
    :goto_3
    if-eqz v3, :cond_13

    if-nez v2, :cond_13

    move v6, v1

    .line 420
    :goto_4
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_14

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 419
    :goto_5
    if-ne v6, v9, :cond_2

    .line 420
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 419
    if-eqz v6, :cond_4

    .line 421
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 422
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v1, :cond_15

    .line 423
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v10

    .line 423
    invoke-virtual {v6, v9, v10, v11}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 432
    :cond_4
    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v6, :cond_6

    .line 433
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBouncerShowing(Z)V

    .line 434
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBouncerShowing(Z)V

    .line 435
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBouncerShowing(Z)V

    .line 438
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 439
    .local v4, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-eqz v3, :cond_7

    if-eqz v2, :cond_16

    :cond_7
    move v6, v8

    :goto_7
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-eqz v9, :cond_17

    :cond_8
    move v9, v8

    :goto_8
    if-ne v6, v9, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v6, :cond_c

    .line 440
    :cond_9
    if-eqz v3, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    move v7, v8

    :cond_b
    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 442
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v6, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v6, :cond_e

    .line 443
    :cond_d
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 446
    :cond_e
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 447
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 448
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 449
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 450
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 452
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onKeyguardViewManagerStatesUpdated()V

    .line 404
    return-void

    .line 409
    .end local v0    # "bouncerDismissible":Z
    .end local v4    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_f
    const/4 v0, 0x1

    .restart local v0    # "bouncerDismissible":Z
    goto/16 :goto_0

    :cond_10
    move v6, v7

    .line 411
    goto/16 :goto_1

    :cond_11
    move v9, v7

    goto/16 :goto_2

    .line 414
    :cond_12
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v9, -0x400001

    and-int/2addr v9, v5

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto/16 :goto_3

    :cond_13
    move v6, v7

    .line 419
    goto/16 :goto_4

    :cond_14
    move v9, v7

    .line 420
    goto/16 :goto_5

    .line 426
    :cond_15
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v6

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    goto :goto_6

    .restart local v4    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_16
    move v6, v7

    .line 439
    goto :goto_7

    :cond_17
    move v9, v7

    goto :goto_8
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    .line 349
    :cond_0
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 157
    if-nez p2, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 164
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 155
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    goto :goto_0
.end method

.method public hide(JJ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 287
    .local v8, "uptimeMillis":J
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x30

    add-long/2addr v6, p1

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 289
    .local v2, "delay":J
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 303
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 290
    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 283
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardFadingAway(JJ)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    move-result v0

    .line 315
    .local v0, "staying":Z
    if-nez v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;)V

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateGoingToFullShade(JJ)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishKeyguardFadingAway()V

    goto :goto_1
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isGoingToNotificationShade()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isLipOpen()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLipOpen:Z

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return v0
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 463
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 377
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onMenuPressed()Z

    move-result v0

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onScreenTurnedOff()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    .line 185
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onScreenTurnedOn()V

    .line 197
    return-void
.end method

.method public onScreenTurnedOnForReason(Lcom/android/internal/policy/IKeyguardDrawnCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;
    .param p2, "reason"    # I

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onScreenTurnedOnForReason(I)V

    .line 495
    if-eqz p1, :cond_0

    .line 492
    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 6
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 90
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 91
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object v5, p2

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setOnNotMatchRunnable(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 170
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard()V

    goto :goto_0
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardNeedsInput(Z)V

    .line 227
    return-void
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .prologue
    .line 236
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->onKeyguardOccludedChange(Z)V

    .line 235
    return-void

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 240
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 119
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideBackgroundFrameBeforePreHideAnimation()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public updateUserActivityTimeout()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getUserActivityTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardUserActivityTimeout(J)V

    .line 231
    return-void
.end method

.method public verifyUnlock()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 219
    return-void
.end method
