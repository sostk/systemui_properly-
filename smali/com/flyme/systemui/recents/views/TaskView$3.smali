.class Lcom/flyme/systemui/recents/views/TaskView$3;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskView;->startEnterRecentsAnimationForShadows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startAlpha:F

.field stopAlpha:F

.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskView;->mTransformReal:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    iget v0, v0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getShadowAlphaDependP(F)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->stopAlpha:F

    .line 359
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->stopAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->startAlpha:F

    .line 357
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 364
    .local v0, "value":F
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->this$0:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->getTaskViewBounds()Lcom/flyme/systemui/recents/views/TaskViewBounds;

    move-result-object v1

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->startAlpha:F

    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->stopAlpha:F

    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskView$3;->startAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlphaForAnimation(F)V

    .line 362
    return-void
.end method
