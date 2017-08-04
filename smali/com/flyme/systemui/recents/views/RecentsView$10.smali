.class Lcom/flyme/systemui/recents/views/RecentsView$10;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->onClearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;

.field final synthetic val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/flyme/systemui/recents/views/TaskView;Z)V
    .locals 3
    .param p1, "target"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "needClickAnimaiton"    # Z

    .prologue
    .line 946
    if-nez p1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$10$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/RecentsView$10$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$10;)V

    iput-object v1, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mClearAllFinishRunnable:Ljava/lang/Runnable;

    .line 945
    :goto_0
    return-void

    .line 956
    :cond_0
    if-eqz p2, :cond_1

    .line 957
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$10$2;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->val$stackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {v1, p0, v2, p1}, Lcom/flyme/systemui/recents/views/RecentsView$10$2;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$10;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;)V

    iput-object v1, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mClearAllFinishRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$10;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$10$3;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/recents/views/RecentsView$10$3;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$10;Lcom/flyme/systemui/recents/views/TaskView;)V

    iput-object v1, v0, Lcom/flyme/systemui/recents/views/RecentsView;->mClearAllFinishRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method
