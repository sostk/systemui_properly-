.class Lcom/flyme/systemui/recents/views/RecentsView$5;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$opts:Landroid/app/ActivityOptions;

.field final synthetic val$task:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/model/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p3, "val$opts"    # Landroid/app/ActivityOptions;
    .param p4, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$opts:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 751
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$5$1;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$opts:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView$5;->val$intent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/flyme/systemui/recents/views/RecentsView$5$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$5;Lcom/flyme/systemui/recents/model/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V

    .line 750
    :cond_0
    return-void
.end method
