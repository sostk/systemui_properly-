.class Lcom/android/systemui/qs/QSPanel$20;
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

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "val$editMode"    # Z
    .param p3, "val$row"    # I

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$20;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel$20;->val$editMode:Z

    iput p3, p0, Lcom/android/systemui/qs/QSPanel$20;->val$row:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1520
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1521
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel$20;->val$editMode:Z

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$20;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget v1, p0, Lcom/android/systemui/qs/QSPanel$20;->val$row:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap9(Lcom/android/systemui/qs/QSPanel;ZI)V

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$20;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->requestLayout()V

    .line 1519
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1512
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1513
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel$20;->val$editMode:Z

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$20;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget v1, p0, Lcom/android/systemui/qs/QSPanel$20;->val$row:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap9(Lcom/android/systemui/qs/QSPanel;ZI)V

    .line 1511
    :cond_0
    return-void
.end method
