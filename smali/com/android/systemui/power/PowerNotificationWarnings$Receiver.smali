.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 375
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "PNW.batterySettings"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v0, "PNW.startSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "PNW.stopSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "PNW.dismissedWarning"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get1(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "PowerUI.Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string/jumbo v1, "PNW.batterySettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string/jumbo v1, "PNW.startSaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_0

    .line 393
    :cond_2
    const-string/jumbo v1, "PNW.stopSaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap1(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    goto :goto_0

    .line 397
    :cond_3
    const-string/jumbo v1, "PNW.dismissedWarning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto :goto_0
.end method
