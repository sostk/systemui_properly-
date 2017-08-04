.class Lcom/flyme/systemui/recents/RecentsWindow$2;
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
    .line 105
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$2;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow$2;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    new-instance v3, Lcom/flyme/systemui/recents/RecentsWindow$2$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/recents/RecentsWindow$2$1;-><init>(Lcom/flyme/systemui/recents/RecentsWindow$2;)V

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindow(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow$2;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHome(Z)Z

    goto :goto_0
.end method
