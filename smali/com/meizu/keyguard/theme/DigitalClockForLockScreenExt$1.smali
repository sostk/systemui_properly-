.class Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DigitalClockForLockScreenExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargingViewMaskChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 65
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-get0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 67
    .local v0, "color":I
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap2(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;I)V

    .line 64
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public onEasyModeChanged(Z)V
    .locals 1
    .param p1, "isEasyMode"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->loadNormalModeView()V

    .line 59
    return-void
.end method

.method public onLockWallpaperColorChanged()V
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-get0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 33
    .local v0, "color":I
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap2(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;I)V

    .line 30
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public onNotificationPanleBlurColorChanged()V
    .locals 4

    .prologue
    .line 38
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-get0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 40
    .local v0, "color":I
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap2(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;I)V

    .line 37
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V

    .line 47
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap1(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V

    .line 48
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-get0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->loadNormalModeView()V

    .line 45
    :cond_0
    return-void
.end method

.method public resetDefaultColors()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;->this$0:Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->-wrap2(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;I)V

    .line 54
    return-void
.end method
