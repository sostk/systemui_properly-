.class public Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;
.super Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
.source "DigitalClockForLockScreenExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;
    }
.end annotation


# instance fields
.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->initThemeValues()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->setThemeValues()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->updateColors(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt$1;-><init>(Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;)V

    iput-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 22
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->onAttachedToWindow()V

    .line 75
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 77
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->initThemeValues()V

    .line 78
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->setThemeValues()V

    .line 73
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/meizu/keyguard/theme/DigitalClockForLockScreenExt;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 82
    return-void
.end method
