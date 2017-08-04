.class Lcom/flyme/systemui/recents/views/RecentsView$10$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView$10;->onCallback(Lcom/flyme/systemui/recents/views/TaskView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

.field final synthetic val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$target:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$10;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$10;
    .param p2, "val$stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p3, "val$target"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->val$target:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->makeAllChildClipable()V

    .line 962
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->val$target:Lcom/flyme/systemui/recents/views/TaskView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$2;->val$target:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V

    .line 959
    :cond_0
    return-void
.end method
