.class Lcom/flyme/systemui/recents/views/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/SwipeHelper;
    .param p2, "val$view"    # Landroid/view/View;
    .param p3, "val$canAnimViewBeDismissed"    # Z

    .prologue
    .line 275
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mCallback:Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 280
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 283
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 277
    return-void
.end method
