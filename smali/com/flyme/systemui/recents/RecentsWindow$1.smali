.class Lcom/flyme/systemui/recents/RecentsWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$1;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string/jumbo v1, "triggeredFromAltTab"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$1;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToFocusedTaskOrHome(Z)Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string/jumbo v1, "triggeredFromHomeKey"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$1;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHome(Z)Z

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v1, "action_toggle_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$1;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method
