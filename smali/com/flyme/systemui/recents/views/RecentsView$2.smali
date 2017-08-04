.class Lcom/flyme/systemui/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;

.field final synthetic val$task:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$task"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$2;->val$task:Lcom/flyme/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$2$1;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsView$2;->val$task:Lcom/flyme/systemui/recents/model/Task;

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView$2$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$2;Lcom/flyme/systemui/recents/model/Task;)V

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V

    .line 541
    :cond_0
    return-void
.end method
