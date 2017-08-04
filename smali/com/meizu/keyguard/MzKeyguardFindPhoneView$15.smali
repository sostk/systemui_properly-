.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;
.super Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->checkFindPhoneLock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p2, "this$0_1"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0, p1, p3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onFindPhoneLockChangedResponse(Lcom/meizu/flyme/service/find/FindPhoneData;)V
    .locals 14
    .param p1, "result"    # Lcom/meizu/flyme/service/find/FindPhoneData;

    .prologue
    const/16 v13, 0x3ea

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 577
    const-string/jumbo v8, "FindPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkFindPhoneLock result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8, v12}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z

    .line 579
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 580
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 581
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 582
    iget-object v7, p1, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    .line 583
    .local v7, "signKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget v9, p1, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-static {v8, v9}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I

    .line 584
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 587
    const/4 v5, 0x0

    .line 588
    .local v5, "realUnlock":Z
    const/4 v6, 0x0

    .line 590
    .local v6, "recoveryLockState":I
    const-string/jumbo v8, "FindPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "check findphone success and setLockState 0, recoveryLockState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v5, 0x1

    .line 596
    if-eqz v5, :cond_1

    .line 598
    const-string/jumbo v8, "FindPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processLeftTimes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v10}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v8

    if-gtz v8, :cond_0

    .line 600
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    .line 601
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get11(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 602
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get11(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 604
    .local v0, "currentPwdType":I
    const-string/jumbo v8, "lock_settings"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 603
    invoke-static {v8}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    .line 606
    .local v4, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    :try_start_0
    const-string/jumbo v8, "lockscreen.password_type_mz_backup"

    .line 607
    int-to-long v10, v0

    const/4 v9, 0x0

    .line 606
    invoke-interface {v4, v8, v10, v11, v9}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get11(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->clearFlymePassword(I)Z

    .line 612
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 613
    const-string/jumbo v9, "mz_fingerprint_use_unlock"

    .line 612
    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v8, v12}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->resetSystemMode(Z)V

    .line 618
    .end local v0    # "currentPwdType":I
    .end local v4    # "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "meizu.intent.action.FINDPHONE_STATE_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "securityLock"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v8, "Lock"

    const-string/jumbo v9, "off"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 625
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    invoke-interface {v8, v5, v12}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 626
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 576
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "realUnlock":Z
    .end local v6    # "recoveryLockState":I
    :cond_1
    :goto_1
    return-void

    .line 608
    .restart local v0    # "currentPwdType":I
    .restart local v4    # "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    .restart local v5    # "realUnlock":Z
    .restart local v6    # "recoveryLockState":I
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 631
    .end local v0    # "currentPwdType":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    .end local v5    # "realUnlock":Z
    .end local v6    # "recoveryLockState":I
    :cond_2
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 632
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v9, v8, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v9

    .line 633
    :try_start_1
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get6(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 635
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.meizu.flyme.FindPhone"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "msg"

    const-string/jumbo v10, "takephoto"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string/jumbo v8, "auto_take"

    const/4 v10, 0x1

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit v9

    .line 646
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v8, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->showToast(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    goto :goto_1

    .line 632
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 641
    :cond_5
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v8}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    .line 643
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
