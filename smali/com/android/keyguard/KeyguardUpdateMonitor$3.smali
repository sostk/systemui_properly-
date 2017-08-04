.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 589
    const-string/jumbo v8, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 588
    if-nez v8, :cond_0

    .line 590
    const-string/jumbo v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 588
    if-eqz v8, :cond_2

    .line 591
    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 593
    const-string/jumbo v8, "status"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 594
    .local v7, "status":I
    const-string/jumbo v8, "plugged"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 595
    .local v5, "plugged":I
    const-string/jumbo v8, "level"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 596
    .local v3, "level":I
    const-string/jumbo v8, "health"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 597
    .local v2, "health":I
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    .line 598
    new-instance v9, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v9, v7, v3, v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    const/16 v10, 0x12e

    .line 597
    invoke-virtual {v8, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 599
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 600
    .end local v2    # "health":I
    .end local v3    # "level":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "plugged":I
    .end local v7    # "status":I
    :cond_3
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 601
    const-string/jumbo v8, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 600
    if-eqz v8, :cond_5

    .line 602
    :cond_4
    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v1

    .line 604
    .local v1, "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const-string/jumbo v8, "KeyguardUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 605
    const-string/jumbo v10, " state: "

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 605
    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 606
    const-string/jumbo v10, " slotId: "

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 606
    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 606
    const-string/jumbo v10, " subid: "

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 606
    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 604
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v12, 0x130

    invoke-virtual {v8, v12, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 610
    .end local v1    # "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_5
    const-string/jumbo v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 611
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    .line 612
    const-string/jumbo v10, "android.media.EXTRA_RINGER_MODE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 611
    const/16 v11, 0x131

    invoke-virtual {v9, v11, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 613
    :cond_6
    const-string/jumbo v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 614
    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "state":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x132

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 616
    .end local v6    # "state":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 617
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    .line 618
    const-string/jumbo v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 617
    const/16 v11, 0x137

    invoke-virtual {v9, v11, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 619
    :cond_8
    const-string/jumbo v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 620
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0
.end method
