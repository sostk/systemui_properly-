.class Lcom/android/systemui/qs/QSPanel$18;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1482
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1483
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->-get10(Lcom/android/systemui/qs/QSPanel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get11(Lcom/android/systemui/qs/QSPanel;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/QSPanel;->-wrap0(FII)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSPanel;->-set2(Lcom/android/systemui/qs/QSPanel;I)I

    .line 1485
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$18;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->requestLayout()V

    .line 1481
    return-void
.end method
