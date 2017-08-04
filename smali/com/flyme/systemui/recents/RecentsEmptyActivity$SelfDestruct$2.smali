.class Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;
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
    .line 231
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->isRecentsShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->finish()V

    .line 237
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct$2;->this$1:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-virtual {v0, v1, v1}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->overridePendingTransition(II)V

    .line 233
    :cond_1
    return-void
.end method
