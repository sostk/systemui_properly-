.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 3037
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3040
    if-eqz p1, :cond_5

    .line 3041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v2, :cond_2

    .line 3042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 3046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3049
    const-wide/16 v2, 0xa0

    .line 3046
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3050
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3046
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3051
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    .line 3046
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3058
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/keyguard/ChargeViewUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 3039
    :cond_2
    :goto_1
    return-void

    .line 3043
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3053
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 3054
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    goto :goto_0

    .line 3061
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v2, :cond_2

    .line 3062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 3064
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 3066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setAlpha(F)V

    .line 3068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3070
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3068
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3072
    const-wide/16 v2, 0x140

    .line 3068
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3073
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 3068
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3075
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    .line 3068
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3079
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/keyguard/ChargeViewUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 3080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_2

    .line 3081
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguardClock(Z)V

    goto/16 :goto_1

    .line 3063
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 3077
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    goto :goto_2
.end method
