.class Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploaderReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method private constructor <init>(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 1003
    const-string/jumbo v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get7(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0, v3}, Lcom/meizu/stats/UsageStatsUploader;->-set1(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 1008
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v5, v2, v3}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1009
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POWER_CONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v2}, Lcom/meizu/stats/UsageStatsUploader;->-get7(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    const-string/jumbo v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1011
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get7(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0, v2}, Lcom/meizu/stats/UsageStatsUploader;->-set1(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 1015
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POWER_DISCONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v2}, Lcom/meizu/stats/UsageStatsUploader;->-get7(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_4
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1017
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1018
    :cond_5
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1019
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-wrap0(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1020
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get4(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1021
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0, v3}, Lcom/meizu/stats/UsageStatsUploader;->-set0(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 1023
    :cond_6
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 1024
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1031
    :goto_1
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NETWORK_CONNECTED, mNetworkConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v2}, Lcom/meizu/stats/UsageStatsUploader;->-get4(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    :cond_7
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get4(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1027
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0, v2}, Lcom/meizu/stats/UsageStatsUploader;->-set0(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 1029
    :cond_8
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    goto :goto_1

    .line 1032
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.meizu.usagestats.uploader_alarm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsUploader;->-get5(Lcom/meizu/stats/UsageStatsUploader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
