.class public Lcom/android/systemui/keyguard/ChargeViewUtils;
.super Ljava/lang/Object;
.source "ChargeViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ChargeViewUtils$1;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/systemui/keyguard/ChargeViewUtils;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

.field private mContext:Landroid/content/Context;

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutDuration:I

.field private mFullCharged:Z

.field private mHasActiveNotifications:Z

.field private mPluggedIn:Z

.field private mRegisterUpdateMonitor:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewRoot:Landroid/widget/LinearLayout;

.field private mViewRootShow:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "ChargeViewUtils"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->TAG:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mPluggedIn:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mRegisterUpdateMonitor:Z

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutDuration:I

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFullCharged:Z

    .line 144
    new-instance v0, Lcom/android/systemui/keyguard/ChargeViewUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ChargeViewUtils$1;-><init>(Lcom/android/systemui/keyguard/ChargeViewUtils;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 268
    :cond_1
    return-void
.end method

.method private fadeInAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/ChargeViewUtils$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ChargeViewUtils$2;-><init>(Lcom/android/systemui/keyguard/ChargeViewUtils;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    return-void
.end method

.method private fadeOutAnimator()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/ChargeViewUtils$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ChargeViewUtils$3;-><init>(Lcom/android/systemui/keyguard/ChargeViewUtils;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 240
    return-void

    .line 242
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/keyguard/ChargeViewUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mInstance:Lcom/android/systemui/keyguard/ChargeViewUtils;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mInstance:Lcom/android/systemui/keyguard/ChargeViewUtils;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mInstance:Lcom/android/systemui/keyguard/ChargeViewUtils;

    return-object v0
.end method

.method private loadCharingView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 109
    const v3, 0x7f0f0283

    .line 108
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00f6

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .local v0, "chargingView":Landroid/widget/ImageView;
    new-instance v1, Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRootShow:Z

    .line 105
    .end local v0    # "chargingView":Landroid/widget/ImageView;
    :cond_1
    return-void

    .restart local v0    # "chargingView":Landroid/widget/ImageView;
    :cond_2
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method private updateChargingMaskAnim(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 197
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRootShow:Z

    if-eq v1, p1, :cond_1

    .line 198
    const-string/jumbo v1, "ChargeViewUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateChargingMaskAnim visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,anim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRootShow:Z

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->cancelAnimator()V

    .line 201
    if-eqz p2, :cond_4

    .line 202
    if-eqz p1, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->fadeInAnimator()V

    .line 190
    :cond_1
    :goto_1
    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    invoke-interface {v1, p1, v0}, Lcom/meizu/keyguard/charge/ChargeViewBase;->setVisible(ZZ)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->fadeOutAnimator()V

    goto :goto_1

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mViewRoot:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getScreenState()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method public isChargingViewVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    .line 187
    .local v0, "status":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldChargingViewShow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFullCharged:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onExpandingFinished(Z)V
    .locals 2
    .param p1, "isFullyCollapsed"    # Z

    .prologue
    .line 173
    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onExpandingFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 172
    :cond_0
    return-void
.end method

.method public onExpandingStarted()V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onExpandingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 179
    return-void
.end method

.method public onHideKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onHideKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    invoke-interface {v0}, Lcom/meizu/keyguard/charge/ChargeViewBase;->getChargingViewVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    invoke-interface {v0, v2, v2}, Lcom/meizu/keyguard/charge/ChargeViewBase;->setVisible(ZZ)V

    .line 84
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingMaskAnim(ZZ)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    invoke-interface {v0}, Lcom/meizu/keyguard/charge/ChargeViewBase;->cleanUp()V

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mRegisterUpdateMonitor:Z

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 90
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mRegisterUpdateMonitor:Z

    .line 78
    :cond_2
    return-void
.end method

.method public onNotificationCountChaned(Z)V
    .locals 3
    .param p1, "hasActiveNotifications"    # Z

    .prologue
    .line 163
    const-string/jumbo v0, "ChargeViewUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationCountChaned hasActiveNotifications = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, ", mHasActiveNotifications = "

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mHasActiveNotifications:Z

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mHasActiveNotifications:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mHasActiveNotifications:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 162
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 94
    return-void
.end method

.method public onShowKeyguard()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onShowKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mRegisterUpdateMonitor:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mRegisterUpdateMonitor:Z

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 68
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 64
    return-void
.end method

.method public setStatusBarWindowView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 60
    return-void
.end method

.method public updateChargingState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    if-nez v2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->loadCharingView()V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v1

    .line 125
    .local v1, "status":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mPluggedIn:Z

    .line 126
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFullCharged:Z

    .line 127
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFullCharged:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x7d0

    :goto_0
    iput v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFadeOutDuration:I

    .line 128
    const-string/jumbo v2, "ChargeViewUtils"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateChargingState shouldChargingViewShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldChargingViewShow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 130
    const-string/jumbo v4, " , mPluggedIn = "

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 130
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mPluggedIn:Z

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldChargingViewShow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mPluggedIn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mFullCharged:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, "shouldChargingViewShow":Z
    :goto_1
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingMaskAnim(ZZ)V

    .line 133
    if-eqz v0, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/systemui/keyguard/ChargeViewUtils;->mChargingViewBase:Lcom/meizu/keyguard/charge/ChargeViewBase;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->getScreenState()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/meizu/keyguard/charge/ChargeViewBase;->updateBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V

    .line 117
    .end local v0    # "shouldChargingViewShow":Z
    .end local v1    # "status":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    :cond_2
    return-void

    .line 127
    .restart local v1    # "status":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    :cond_3
    const/16 v2, 0x64

    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "shouldChargingViewShow":Z
    goto :goto_1
.end method
