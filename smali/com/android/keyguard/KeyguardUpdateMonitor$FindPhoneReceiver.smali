.class public Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindPhoneReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1599
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x203

    const/16 v8, 0x202

    .line 1602
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1603
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v2

    .line 1604
    .local v2, "isFindPhoneLocked":Z
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1605
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Z)Z

    .line 1606
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1607
    invoke-static {p1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectFlymeLock(Landroid/content/Context;)V

    .line 1611
    .end local v2    # "isFindPhoneLocked":Z
    :cond_0
    const-string/jumbo v3, "FindPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FindPhoneReceiver onReceive mFindPhoneLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1613
    const-string/jumbo v3, "FindPhone"

    const-string/jumbo v4, "User = -2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string/jumbo v3, "FindPhone"

    const-string/jumbo v4, "KeyguardUpdateMonitor is null and return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void

    .line 1617
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    .line 1618
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_2

    .line 1619
    const-string/jumbo v3, "FindPhone"

    const-string/jumbo v4, "handler is null and return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1622
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1624
    const-string/jumbo v3, "FindPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive ACTION_SECURITY_LOCK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1626
    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1601
    :cond_3
    :goto_0
    return-void

    .line 1627
    :cond_4
    const-string/jumbo v3, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1628
    const-string/jumbo v3, "FindPhone"

    const-string/jumbo v4, "receive ACTION_SECURITY_UNLOCK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1630
    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
