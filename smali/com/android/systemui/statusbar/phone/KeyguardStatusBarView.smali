.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryListening:Z

.field private mBatteryTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFilterColor:I

.field private mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

.field private mFilterRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I

.field private mWithAnim:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWithAnim:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWithAnim:Z

    .line 83
    return-void
.end method

.method private animateNextLayoutChange()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 228
    .local v0, "systemIconsCurrentX":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    .line 229
    .local v1, "userSwitcherVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 226
    return-void

    .line 228
    .end local v1    # "userSwitcherVisible":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "userSwitcherVisible":Z
    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x7f0b03ed

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 131
    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 152
    .local v1, "marginEnd":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_0
    return-void

    .line 151
    .end local v1    # "marginEnd":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "marginEnd":I
    goto :goto_0
.end method

.method private updateUserSwitcher()V
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 172
    .local v0, "keyguardSwitcherAvailable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    .line 170
    return-void

    .line 171
    .end local v0    # "keyguardSwitcherAvailable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "keyguardSwitcherAvailable":Z
    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v0, :cond_2

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 292
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 192
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 297
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 90
    const v1, 0x7f0f006f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 91
    const v1, 0x7f0f00db

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 92
    const v1, 0x7f0f00dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0f00e0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0f00dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v1, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    .line 98
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    const v2, 0x10c000d

    .line 106
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 110
    const v1, 0x7f0f0052

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/FlymeBatteryMeterView;

    .line 111
    .local v0, "batteryMeterView":Lcom/flyme/systemui/FlymeBatteryMeterView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryPercentView(Landroid/widget/TextView;)V

    .line 88
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 179
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 177
    return-void
.end method

.method public setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V
    .locals 1
    .param p1, "batterytracker"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .line 324
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 322
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setFilterColor(IZ)V

    .line 305
    return-void
.end method

.method public setFilterColor(IZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "withAnim"    # Z

    .prologue
    .line 310
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    .line 311
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    .line 314
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWithAnim:Z

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 211
    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 0
    .param p1, "showing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    .line 219
    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 217
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 158
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 182
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 273
    :cond_0
    return-void
.end method

.method public updateColorFilter()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 288
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V

    .line 287
    return-void
.end method
