.class Lcom/android/systemui/qs/QSPanel$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->startQsPanelEditDisplayAnimator(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$editMode:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "val$editMode"    # Z

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel$19;->val$editMode:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 1500
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1501
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1504
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel$19;->val$editMode:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    return-void

    .line 1504
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1491
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$19;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    :cond_0
    return-void
.end method
