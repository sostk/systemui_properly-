.class public Lcom/android/keyguard/KeyguardUpdateMonitor$SmartLockRecevier;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartLockRecevier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1948
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x207

    .line 1952
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1953
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "SmartLock KeyguardUpdateMonitor is null and return, User = -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return-void

    .line 1957
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    .line 1958
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 1959
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "SmartLock handler is null and return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return-void

    .line 1962
    :cond_1
    const-string/jumbo v2, "meizu.intent.action.SMART_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1963
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1964
    .local v1, "status":I
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SmartLock MZ_ACTION_SMART_LOCK status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1966
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1950
    .end local v1    # "status":I
    :cond_2
    return-void
.end method
