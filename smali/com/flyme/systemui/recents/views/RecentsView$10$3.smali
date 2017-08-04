.class Lcom/flyme/systemui/recents/views/RecentsView$10$3;
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

.field final synthetic val$target:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$10;Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$10;
    .param p2, "val$target"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$3;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$3;->val$target:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$3;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$3;->val$target:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskView;->requestTaskViewClickWithoutAnimaiton()V

    .line 969
    :cond_0
    return-void
.end method
