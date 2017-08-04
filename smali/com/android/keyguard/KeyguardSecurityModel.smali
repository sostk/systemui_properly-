.class public Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private isBiometricUnlockSuppressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 83
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    .line 84
    const/4 v5, 0x5

    .line 83
    if-lt v4, v5, :cond_1

    const/4 v0, 0x1

    .line 85
    .local v0, "backupIsTimedOut":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    :cond_0
    :goto_1
    return v2

    .line 83
    .end local v0    # "backupIsTimedOut":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "backupIsTimedOut":Z
    goto :goto_0

    :cond_2
    move v2, v3

    .line 87
    goto :goto_1
.end method

.method private isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    const v1, 0x1120052

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    return-object p1

    .line 155
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    .line 156
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_3

    .line 158
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0

    .line 157
    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 10

    .prologue
    .line 91
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 92
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 94
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v3

    .line 95
    .local v3, "pinSubId":I
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 96
    .local v5, "pukSubId":I
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 142
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isPukUnlockScreenEnable()Z

    move-result v7

    .line 99
    if-eqz v7, :cond_2

    .line 101
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v2

    .line 102
    .local v2, "pinSlotId":I
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v4

    .line 103
    .local v4, "pukSlotId":I
    if-ge v4, v2, :cond_1

    .line 104
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 109
    .end local v2    # "pinSlotId":I
    .end local v4    # "pukSlotId":I
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isPukUnlockScreenEnable()Z

    move-result v7

    .line 111
    if-eqz v7, :cond_4

    .line 113
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 115
    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    .line 116
    .local v6, "security":I
    sparse-switch v6, :sswitch_data_0

    .line 138
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown security quality:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :sswitch_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 120
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 126
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 130
    :sswitch_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_0

    .line 134
    :sswitch_3
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method isBiometricUnlockEnabled()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    return-void
.end method
