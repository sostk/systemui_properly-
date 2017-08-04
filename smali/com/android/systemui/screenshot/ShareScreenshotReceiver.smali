.class public Lcom/android/systemui/screenshot/ShareScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareScreenshotReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 29
    const-string/jumbo v4, "com.android.systemui.action.SHARE_SCREENSHOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const-string/jumbo v4, "intent"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 33
    .local v1, "chooserIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v4, "file_path"

    const-string/jumbo v5, "file_path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v4, "IS_HIDE_SUMMARY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    const-string/jumbo v4, "IS_SHOW_CHECKBOX_VIEW"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    const-string/jumbo v4, "CUSTOM_SHARE_CLICK"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;-><init>(Lcom/android/systemui/screenshot/ShareScreenshotReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    const-wide/16 v6, 0x32

    .line 38
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    const-string/jumbo v4, "intent2"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 58
    .local v2, "extra":Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 59
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/16 v5, 0x315

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    :goto_0
    const-string/jumbo v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 66
    const-string/jumbo v4, "mob_event"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 67
    .local v3, "mobEvent":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string/jumbo v4, "share"

    invoke-static {p1, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetScreenshotClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "extra":Landroid/os/Parcelable;
    .end local v3    # "mobEvent":Ljava/lang/Boolean;
    :cond_0
    return-void

    .restart local v1    # "chooserIntent":Landroid/content/Intent;
    .restart local v2    # "extra":Landroid/os/Parcelable;
    :cond_1
    move-object v0, v2

    .line 61
    check-cast v0, Landroid/content/Intent;

    .line 62
    .local v0, "bIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
