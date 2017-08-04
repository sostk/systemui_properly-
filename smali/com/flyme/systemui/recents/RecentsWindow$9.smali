.class Lcom/flyme/systemui/recents/RecentsWindow$9;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$9;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 509
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$9;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$9$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$9$1;-><init>(Lcom/flyme/systemui/recents/RecentsWindow$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 494
    return-void
.end method
