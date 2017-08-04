.class Lcom/flyme/systemui/recents/views/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/SwipeHelper;->snapChild(Lcom/flyme/systemui/recents/views/TaskView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

.field final synthetic val$view:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/SwipeHelper;Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/SwipeHelper;
    .param p2, "val$view"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->val$view:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnSnapBackCompleted;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->val$view:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$OnSnapBackCompleted;-><init>(Lcom/flyme/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->val$view:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onSnapBackCompleted(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownToBottom:Z

    .line 320
    return-void
.end method
