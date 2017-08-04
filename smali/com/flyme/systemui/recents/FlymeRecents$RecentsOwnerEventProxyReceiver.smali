.class Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentsOwnerEventProxyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_notify_recents_visibility_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "recentsVisibility"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->visibilityChanged(Z)V

    .line 195
    :cond_0
    return-void
.end method
