.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;,
        Lcom/android/keyguard/EmergencyButton$1;,
        Lcom/android/keyguard/EmergencyButton$2;
    }
.end annotation


# instance fields
.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOriginScale:[F

.field private mPowerManager:Landroid/os/PowerManager;

.field mResetAnimationScaleRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    .line 217
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const v1, 0x1120053

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 72
    return-void
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    const v1, 0x1120065

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 193
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v0, 0x1

    .line 149
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButtonState(Z)V

    .line 133
    return-void

    .line 137
    .restart local v0    # "enabled":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v1

    .line 139
    .local v1, "simLocked":Z
    if-eqz v1, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .local v0, "enabled":Z
    goto :goto_0

    .line 146
    .local v0, "enabled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .local v0, "enabled":Z
    goto :goto_0
.end method

.method private updateEmergencyCallButtonState(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_return_to_call:I

    .line 182
    .local v0, "textId":I
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/keyguard/EmergencyButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 187
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 170
    return-void

    .line 174
    .end local v0    # "textId":I
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 175
    return-void

    .line 184
    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    .line 185
    .restart local v0    # "textId":I
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/keyguard/EmergencyButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public disableWindowAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 238
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 241
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    .line 242
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/keyguard/EmergencyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 243
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/keyguard/EmergencyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 246
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/EmergencyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    throw v2

    .line 249
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/keyguard/EmergencyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 242
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 80
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 153
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 94
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 92
    return-void
.end method

.method public setCallBack(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 258
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->disableWindowAnimation()V

    .line 111
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 112
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 114
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/EmergencyButton$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/EmergencyButton$4;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    .line 120
    const-wide/16 v4, 0x64

    .line 115
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    .line 124
    .local v0, "bypassHandler":Z
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 129
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 128
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
