.class Lcom/flyme/systemui/recents/FlymeRecents$4;
.super Landroid/content/BroadcastReceiver;
.source "FlymeRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$4;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$4;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents$4;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v1, v1, Lcom/flyme/systemui/recents/FlymeRecents;->runnableForToggleRecents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$4;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents$4;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v1, v1, Lcom/flyme/systemui/recents/FlymeRecents;->runnableForToggleRecents:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method
