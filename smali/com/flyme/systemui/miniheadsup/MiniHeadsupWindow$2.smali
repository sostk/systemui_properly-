.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->it:Landroid/view/animation/Interpolator;

    .line 404
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 410
    .local v0, "f":F
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->it:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    .line 411
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get1(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setAlpha(F)V

    .line 408
    return-void
.end method
