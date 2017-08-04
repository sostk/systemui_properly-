.class Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelfDestruct"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;,
        Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;
    }
.end annotation


# instance fields
.field final checkRunnable:Ljava/lang/Runnable;

.field final destructRunnable:Ljava/lang/Runnable;

.field isAlive:Z

.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->isAlive:Z

    .line 223
    new-instance v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$1;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->checkRunnable:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->destructRunnable:Ljava/lang/Runnable;

    .line 221
    return-void
.end method


# virtual methods
.method checkSelf()V
    .locals 4

    .prologue
    .line 254
    invoke-static {}, Lcom/android/systemui/recents/Recents;->isRecentsShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->destructRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->isAlive:Z

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->destructRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->isAlive:Z

    .line 244
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method
