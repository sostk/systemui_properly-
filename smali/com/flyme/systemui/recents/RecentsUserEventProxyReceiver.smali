.class public Lcom/flyme/systemui/recents/RecentsUserEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsUserEventProxyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    .line 51
    invoke-static {v3, v4}, Lcom/android/systemui/recents/Recents;->getRecentsComponent(Landroid/content/Context;Z)Lcom/flyme/systemui/recents/FlymeRecents;

    move-result-object v0

    .line 53
    .local v0, "recents":Lcom/flyme/systemui/recents/FlymeRecents;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string/jumbo v3, "triggeredFromAltTab"

    .line 55
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    .local v1, "triggeredFromAltTab":Z
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->showRecents()V

    .line 50
    .end local v1    # "triggeredFromAltTab":Z
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v4, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const-string/jumbo v3, "triggeredFromAltTab"

    .line 61
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .restart local v1    # "triggeredFromAltTab":Z
    const-string/jumbo v3, "triggeredFromHomeKey"

    .line 63
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 65
    .local v2, "triggeredFromHome":Z
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->hideRecents()V

    goto :goto_0

    .line 53
    .end local v1    # "triggeredFromAltTab":Z
    .end local v2    # "triggeredFromHome":Z
    :cond_2
    const-string/jumbo v4, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecents()V

    goto :goto_0

    .line 53
    :cond_3
    const-string/jumbo v4, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->preloadRecents()V

    goto :goto_0

    .line 53
    :cond_4
    const-string/jumbo v4, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->configurationChanged()V

    goto :goto_0

    .line 53
    :cond_5
    const-string/jumbo v4, "com.android.systemui.recents.action.UPDATE_RECENTS_ENTER_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 78
    const-string/jumbo v3, "recentsEnter"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/FlymeRecents;->onUpdateRecentEnter(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 53
    :cond_6
    const-string/jumbo v4, "com.android.systemui.recents.action.UPDATE_QUICK_CHANGE_FOR_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string/jumbo v3, "quick_change"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/FlymeRecents;->onUpdateRecentQuickchange(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
