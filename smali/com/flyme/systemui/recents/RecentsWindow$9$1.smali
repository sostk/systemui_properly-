.class Lcom/flyme/systemui/recents/RecentsWindow$9$1;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/RecentsWindow$9;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/RecentsWindow$9;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$9$1;->this$1:Lcom/flyme/systemui/recents/RecentsWindow$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 502
    return-void
.end method
