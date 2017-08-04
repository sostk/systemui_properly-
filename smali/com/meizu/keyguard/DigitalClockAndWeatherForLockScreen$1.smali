.class Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-static {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->-get1(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->-set0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;->this$0:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-static {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->-get0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1$1;-><init>(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method
