.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;ZZ)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z

    .prologue
    .line 3208
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3212
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_2

    .line 3221
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3228
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3229
    .local v3, "intent":Landroid/content/Intent;
    iget-object v0, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 3230
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3239
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3240
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_4

    .line 3241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_3

    move v0, v10

    .line 3240
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 3210
    :cond_1
    return-void

    .line 3213
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3222
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 3232
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 3235
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

    .line 3241
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v10

    .line 3240
    goto :goto_3
.end method
