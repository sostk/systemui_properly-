.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V
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
    .line 437
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->it:Landroid/view/animation/Interpolator;

    .line 437
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 443
    .local v0, "f":F
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    .line 444
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get3(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v1

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 445
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get4(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v1

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 441
    return-void
.end method
