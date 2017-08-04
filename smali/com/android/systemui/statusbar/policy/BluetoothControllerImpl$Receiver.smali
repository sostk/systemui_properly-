.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/high16 v10, -0x80000000

    const/4 v5, 0x1

    .line 642
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 645
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string/jumbo v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 648
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap15(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V

    .line 649
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap17(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 651
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get5(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap14(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 655
    :cond_0
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_STATE_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    const-string/jumbo v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 657
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 658
    const-string/jumbo v7, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 660
    .local v4, "state":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 661
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACTION_CONNECTION_STATE_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 662
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v9

    .line 661
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 662
    const-string/jumbo v9, " "

    .line 661
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 662
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    .line 661
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-ne v4, v5, :cond_3

    :goto_1
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap16(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 664
    .end local v4    # "state":I
    :cond_4
    const-string/jumbo v7, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 665
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive BluetoothDevice.ACTION_ALIAS_CHANGED="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap17(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 671
    :cond_5
    const-string/jumbo v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 672
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_BOND_STATE_CHANGED device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap17(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto/16 :goto_0

    .line 675
    :cond_6
    const-string/jumbo v7, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 676
    const-string/jumbo v5, "android.bluetooth.device.extra.RSSI"

    const/16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 678
    .local v3, "rssi":S
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addr :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5, v1, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;S)V

    goto/16 :goto_0

    .line 680
    .end local v3    # "rssi":S
    :cond_7
    const-string/jumbo v7, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 682
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 683
    const-string/jumbo v7, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 687
    .restart local v4    # "state":I
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MZ_ACTION_DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 688
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v9

    .line 687
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 688
    const-string/jumbo v9, " "

    .line 687
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 688
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    .line 687
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-ne v4, v5, :cond_8

    :goto_2
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap16(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V

    goto/16 :goto_0

    :cond_8
    move v5, v6

    goto :goto_2

    .line 690
    .end local v4    # "state":I
    :cond_9
    const-string/jumbo v5, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 691
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v6, "ACTION_DISCOVERY_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap4(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto/16 :goto_0

    .line 693
    :cond_a
    const-string/jumbo v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 694
    const-string/jumbo v5, "BluetoothController"

    const-string/jumbo v6, "ACTION_DISCOVERY_FINISHED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto/16 :goto_0

    .line 698
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap1(Ljava/lang/String;)I

    move-result v2

    .line 699
    .local v2, "profile":I
    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 700
    .restart local v4    # "state":I
    const-string/jumbo v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_CONNECTION_STATE_CHANGE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 701
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 702
    const-string/jumbo v7, " "

    .line 700
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 702
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eq v2, v11, :cond_1

    if-eq v4, v11, :cond_1

    .line 704
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5, v1, v2, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap18(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0
.end method

.method public register()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 619
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v0, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string/jumbo v0, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 618
    return-void
.end method
