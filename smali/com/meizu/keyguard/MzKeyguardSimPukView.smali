.class public Lcom/meizu/keyguard/MzKeyguardSimPukView;
.super Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;
.source "MzKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;,
        Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;,
        Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;,
        Lcom/meizu/keyguard/MzKeyguardSimPukView$1;
    }
.end annotation


# instance fields
.field private mCheckSimPukThread:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

.field private mStateMachine:Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Lcom/meizu/keyguard/UnLockLoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mStateMachine:Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/MzKeyguardSimPukView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;)Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCheckSimPukThread:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/meizu/keyguard/MzKeyguardSimPukView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "shouldDisplay"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/keyguard/MzKeyguardSimPukView;I)V
    .locals 0
    .param p1, "remaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->showSimRemainingAttemptsDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->updateSim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 64
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mStateMachine:Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    .line 68
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 92
    return-void
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 310
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 312
    const/4 v1, 0x1

    return v1

    .line 314
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPukPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v5, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "MzKeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    const-string/jumbo v3, " displayMessage="

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v0

    .line 181
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    sget v2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_puk_code:I

    .line 182
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 182
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Lcom/meizu/keyguard/UnLockLoadingDialog;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/meizu/keyguard/UnLockLoadingDialog;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/keyguard/UnLockLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/UnLockLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    return-object v0
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "shouldDisplay"    # Z

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 458
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 459
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 461
    const v3, 0x104000a

    const/4 v4, 0x0

    .line 459
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 462
    const/4 v3, 0x1

    .line 459
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 465
    .local v0, "newDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 466
    const/16 v3, 0x7d9

    .line 465
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 467
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 468
    const/4 v3, 0x2

    .line 467
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 455
    .end local v0    # "newDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private showSimRemainingAttemptsDialog(I)V
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 478
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 480
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 481
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 483
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 484
    const/16 v3, 0x7d9

    .line 483
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 489
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 473
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSim()V
    .locals 7

    .prologue
    .line 322
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    .line 323
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_sim_unlock_progress_dialog_message:I

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "msg":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getSimUnlockProgressDialog(Ljava/lang/String;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/UnLockLoadingDialog;->show()V

    .line 326
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCheckSimPukThread:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v5, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSubId:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCheckSimPukThread:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    .line 370
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCheckSimPukThread:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->start()V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 452
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 451
    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 450
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaViewPinPuk:Landroid/view/View;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onAttachedToWindow()V

    .line 229
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 436
    .local v0, "id":I
    sget v1, Lcom/android/keyguard/R$id;->delete:I

    if-ne v0, v1, :cond_0

    .line 437
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->resetPasswordText(Z)V

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 433
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onDetachedFromWindow()V

    .line 235
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 233
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 211
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onFinishInflate()V

    .line 213
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 214
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_security_password_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 215
    const/4 v5, 0x1

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 216
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;

    invoke-direct {v1, p0, v4}, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 217
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PasswordTextView;->setMaxNum(I)V

    .line 219
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCancelKey:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaViewPinPuk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    invoke-virtual {v0}, Lcom/meizu/keyguard/UnLockLoadingDialog;->dismiss()V

    .line 247
    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSimUnlockProgressDialog:Lcom/meizu/keyguard/UnLockLoadingDialog;

    .line 243
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->resetState()V

    .line 195
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mStateMachine:Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->reset()V

    .line 193
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 446
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 445
    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 444
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mEcaViewPinPuk:Landroid/view/View;

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mStateMachine:Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->next()V

    .line 375
    return-void
.end method
