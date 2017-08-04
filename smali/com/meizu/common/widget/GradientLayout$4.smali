.class Lcom/meizu/common/widget/GradientLayout$4;
.super Ljava/lang/Object;
.source "GradientLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GradientLayout;->setupGradientUpAnimator(FFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/GradientLayout;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GradientLayout;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 805
    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/meizu/common/widget/GradientLayout;->access$1102(Lcom/meizu/common/widget/GradientLayout;F)F

    .line 806
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1100(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v3}, Lcom/meizu/common/widget/GradientLayout;->access$1100(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 807
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1300(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v3}, Lcom/meizu/common/widget/GradientLayout;->access$1400(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 808
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1300(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v3}, Lcom/meizu/common/widget/GradientLayout;->access$1400(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 810
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1800(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 811
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1100(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1900(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 812
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$2000(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1500(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 814
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$4;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 815
    return-void
.end method
