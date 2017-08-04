.class Lcom/android/systemui/statusbar/KeyguardIndicationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEasyModeChanged(Z)V
    .locals 1
    .param p1, "isEasyMode"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 220
    return-void
.end method

.method public onFingerprintUsedAsUnlockChanged(Z)V
    .locals 1
    .param p1, "usedAsUnlock"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 237
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 207
    const-string/jumbo v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefreshBatteryInfo  mIsPluggedIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldChargingViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(ZJ)V

    goto :goto_0
.end method

.method public onSmartLockStatusChange(Z)V
    .locals 1
    .param p1, "isSmartLock"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 225
    return-void
.end method
