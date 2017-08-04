.class Lcom/flyme/systemui/recents/views/RecentsView$10$1;
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


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$10;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$10;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onDismissRecentsToFocusedTaskOrHome()V

    .line 949
    :cond_0
    return-void
.end method
