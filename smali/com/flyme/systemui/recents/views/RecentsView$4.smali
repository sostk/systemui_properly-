.class Lcom/flyme/systemui/recents/views/RecentsView$4;
.super Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
.source "RecentsView.java"


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

.field final synthetic val$compeletedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$tv:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p3, "val$tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p4, "val$compeletedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$tv:Lcom/flyme/systemui/recents/views/TaskView;

    iput-object p4, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$compeletedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$tv:Lcom/flyme/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsView$4;->val$compeletedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 612
    :cond_0
    return-void
.end method
