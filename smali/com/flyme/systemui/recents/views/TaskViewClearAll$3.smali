.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;->startClearAllAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

.field final synthetic val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;
    .param p2, "val$completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 140
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 150
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 135
    return-void
.end method
