.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MzKeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargingViewMaskChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 583
    :cond_0
    return-void
.end method

.method public onEasyModeChanged(Z)V
    .locals 1
    .param p1, "isEasyMode"    # Z

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 578
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 552
    return-void
.end method

.method public onLockWallpaperColorChanged()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onNotificationPanleBlurColorChanged()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 562
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 547
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap0(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap1(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 568
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 537
    return-void
.end method

.method public resetDefaultColors()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 573
    return-void
.end method
