.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1433
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1432
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1435
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1438
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1441
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1444
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1447
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1450
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1453
    :pswitch_7
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_2

    :goto_2
    invoke-static {v5, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1456
    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1459
    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 1462
    :pswitch_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    :goto_3
    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    .line 1465
    :pswitch_b
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 1466
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v4, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v3

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1470
    :pswitch_c
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto :goto_0

    .line 1473
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1474
    .local v0, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    goto :goto_0

    .line 1477
    .end local v0    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :pswitch_e
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Timeout while waiting for activity drawn!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :pswitch_f
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1485
    :pswitch_10
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1488
    :pswitch_11
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 1490
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOnForReason(Lcom/android/internal/policy/IKeyguardDrawnCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 1488
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1494
    :pswitch_12
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarViewForHolster()Landroid/view/View;

    move-result-object v1

    .line 1496
    .local v1, "phoneStatusBarView":Landroid/view/View;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1499
    .end local v1    # "phoneStatusBarView":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1500
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set6(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1501
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1504
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1506
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    goto/16 :goto_0

    .line 1511
    :pswitch_13
    const-string/jumbo v2, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HOLSTER_CLOSE_MSG isShowing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap22(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1522
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1523
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$5;)V

    .line 1534
    const-wide/16 v6, 0x1e

    .line 1523
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1541
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1542
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarViewForHolster()Landroid/view/View;

    move-result-object v1

    .line 1543
    .restart local v1    # "phoneStatusBarView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1545
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpLidClosed(Z)V

    .line 1547
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto/16 :goto_0

    .line 1536
    .end local v1    # "phoneStatusBarView":Landroid/view/View;
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1537
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set6(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1538
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_5

    .line 1551
    :pswitch_14
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    goto/16 :goto_0

    .line 1554
    :pswitch_15
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto/16 :goto_0

    .line 1433
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_15
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method
