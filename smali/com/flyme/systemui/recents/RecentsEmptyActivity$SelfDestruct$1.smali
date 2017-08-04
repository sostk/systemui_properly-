.class Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->checkSelf()V

    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void
.end method
