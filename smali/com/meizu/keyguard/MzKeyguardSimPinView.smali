.class public Lcom/meizu/keyguard/MzKeyguardSimPinView;
.super Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;
.source "MzKeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;,
        Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;,
        Lcom/meizu/keyguard/MzKeyguardSimPinView$1;,
        Lcom/meizu/keyguard/MzKeyguardSimPinView$2;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

.field private mDismissSimPinPukRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Lcom/meizu/keyguard/UnLockLoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/MzKeyguardSimPinView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;)Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCheckSimPinThread:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/MzKeyguardSimPinView;I)Ljava/lang/String;
    .locals 1
    .param p1, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 415
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardSimPinView$2;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView$2;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    .line 98
    return-void
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v5, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "MzKeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string/jumbo v3, " displayMessage="

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v0

    .line 137
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    sget v2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    .line 138
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 138
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Lcom/meizu/keyguard/UnLockLoadingDialog;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/meizu/keyguard/UnLockLoadingDialog;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/keyguard/UnLockLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/UnLockLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    return-object v0
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 412
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 411
    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaViewPinPuk:Landroid/view/View;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onAttachedToWindow()V

    .line 180
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 178
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 396
    .local v0, "id":I
    sget v1, Lcom/android/keyguard/R$id;->delete:I

    if-ne v0, v1, :cond_0

    .line 397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->resetPasswordText(Z)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 393
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onDetachedFromWindow()V

    .line 186
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 184
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 162
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onFinishInflate()V

    .line 164
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 165
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_security_password_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 166
    const/4 v5, 0x1

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 167
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;

    invoke-direct {v1, p0, v4}, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PasswordTextView;->setMaxNum(I)V

    .line 170
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCancelKey:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaViewPinPuk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    invoke-virtual {v0}, Lcom/meizu/keyguard/UnLockLoadingDialog;->dismiss()V

    .line 199
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 195
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 103
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->resetState()V

    .line 104
    const-string/jumbo v9, "MzKeyguardSimPinView"

    const-string/jumbo v10, "Resetting state"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 106
    .local v1, "count":I
    const/4 v0, 0x0

    .line 107
    .local v0, "absentSimCount":I
    const-string/jumbo v4, ""

    .line 108
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 109
    .local v5, "rez":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 110
    .local v8, "telephonymanager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 111
    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    .line 112
    .local v6, "sState":I
    const-string/jumbo v9, "MzKeyguardSimPinView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simstate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-ne v6, v13, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v6    # "sState":I
    :cond_1
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 117
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v9

    iput v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    .line 118
    if-ne v0, v13, :cond_3

    .line 119
    iget v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 120
    sget v9, Lcom/android/keyguard/R$string;->enter_pin_tips:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v4, v13}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 102
    return-void

    .line 123
    :cond_3
    iget v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    .line 124
    .local v7, "slotId":I
    const-string/jumbo v9, "MzKeyguardSimPinView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "slotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",subId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 126
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->gemini_enter_pin:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 406
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mEcaViewPinPuk:Landroid/view/View;

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 276
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputNum:Ljava/lang/String;

    .line 278
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 280
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->mz_kg_invalid_sim_pin_hint:I

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 281
    invoke-virtual {p0, v4}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->resetPasswordText(Z)V

    .line 282
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mContext:Landroid/content/Context;

    .line 287
    sget v3, Lcom/android/keyguard/R$string;->lockscreen_sim_unlock_progress_dialog_message:I

    .line 286
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->getSimUnlockProgressDialog(Ljava/lang/String;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/UnLockLoadingDialog;->show()V

    .line 290
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCheckSimPinThread:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    if-nez v2, :cond_1

    .line 291
    new-instance v2, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputNum:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSubId:I

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCheckSimPinThread:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    .line 335
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCheckSimPinThread:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    invoke-virtual {v2}, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->start()V

    .line 275
    :cond_1
    return-void
.end method
