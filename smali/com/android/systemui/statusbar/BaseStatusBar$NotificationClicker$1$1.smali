.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;ZZ)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2141
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_3

    .line 2150
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2157
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2158
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get3(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v0

    .line 2157
    if-eqz v0, :cond_1

    .line 2159
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->onNotificationClicked(Landroid/app/PendingIntent;Z)V

    .line 2163
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2164
    .local v3, "intent":Landroid/content/Intent;
    iget-object v0, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 2165
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2174
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2175
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_5

    .line 2176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_4

    move v0, v11

    .line 2175
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 2181
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2139
    :goto_4
    return-void

    .line 2142
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2151
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 2167
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 2170
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending contentIntent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2176
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v11

    .line 2175
    goto :goto_3

    .line 2182
    :catch_2
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method
