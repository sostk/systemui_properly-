.class Lcom/flyme/systemui/recents/views/TaskStackView$6;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->startDismissCardAnimaiton(Landroid/view/View;FLcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$6;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$6;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 769
    return-void
.end method
