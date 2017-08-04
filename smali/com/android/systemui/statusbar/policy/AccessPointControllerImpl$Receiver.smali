.class final Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AccessPointController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    const-string/jumbo v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 420
    if-eqz v5, :cond_3

    .line 422
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    .line 423
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z

    .line 416
    :cond_2
    :goto_0
    return-void

    .line 424
    :cond_3
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 425
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 426
    .local v4, "state":I
    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    goto :goto_0

    .line 429
    .end local v4    # "state":I
    :cond_4
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 430
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 431
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 432
    .local v1, "connected":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "extraInfo":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v5, "<unknown ssid>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 434
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 395
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_3

    .line 408
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 409
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AccessPointController"

    const-string/jumbo v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    .line 394
    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "AccessPointController"

    const-string/jumbo v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    goto :goto_0
.end method
