.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1361
    const-string/jumbo v3, "seq"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1364
    .local v1, "sequence":I
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v4

    .line 1365
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1367
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1368
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 1358
    .end local v1    # "sequence":I
    :cond_1
    :goto_0
    return-void

    .line 1364
    .restart local v1    # "sequence":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1373
    .end local v1    # "sequence":I
    :cond_2
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1374
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "receive  ACTION_BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1376
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1380
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1381
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1385
    :cond_3
    const-string/jumbo v3, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1386
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1387
    return-void

    .line 1388
    :cond_4
    const-string/jumbo v3, "demoMode"

    const-string/jumbo v4, "receive DEMO_MODE_ACTION_CLEAR_LOCK and reset "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1391
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    .line 1394
    :cond_5
    const-string/jumbo v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1395
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1396
    return-void

    .line 1397
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1398
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1399
    .local v2, "videoIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1400
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    const-string/jumbo v3, "com.meizu.media.video"

    const-string/jumbo v4, "com.meizu.media.video.experience.ExperienceVideoActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    const-string/jumbo v3, "playSource"

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1406
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1407
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v6, v6}, Lcom/meizu/keyguard/MzGestureHelper;->launchFastActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Z

    .line 1408
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1409
    const-string/jumbo v3, "demoMode"

    const-string/jumbo v4, "receive DELAYED_PLAYVIDEO_ACTION and start playIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1404
    :cond_7
    const-string/jumbo v3, "com.meizu.demo.startover"

    const-string/jumbo v4, "com.meizu.demo.startover.demo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1410
    .end local v2    # "videoIntent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v3, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
