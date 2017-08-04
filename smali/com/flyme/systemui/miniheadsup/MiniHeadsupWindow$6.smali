.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateShow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
    .param p2, "val$startY"    # F

    .prologue
    .line 472
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->val$startY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->it:Landroid/view/animation/Interpolator;

    .line 472
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 478
    .local v0, "f":F
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->val$startY:F

    iget v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->val$startY:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;->it:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setTranslationY(F)V

    .line 476
    return-void
.end method
