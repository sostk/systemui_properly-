.class Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-static {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->-wrap0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 174
    return-void
.end method
