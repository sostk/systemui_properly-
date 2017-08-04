.class Lcom/flyme/systemui/recents/views/TaskStackView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$trigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "val$trigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$9;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$9;->val$trigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$9;->val$trigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 887
    return-void
.end method
