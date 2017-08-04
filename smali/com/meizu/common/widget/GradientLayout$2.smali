.class Lcom/meizu/common/widget/GradientLayout$2;
.super Ljava/lang/Object;
.source "GradientLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GradientLayout;->setupGradientDownAnimator(FFJ)V
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
    .line 768
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/GradientLayout;->access$1102(Lcom/meizu/common/widget/GradientLayout;F)F

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1100(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1100(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 773
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1300(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1400(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1300(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$1400(Lcom/meizu/common/widget/GradientLayout;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 775
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1500(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$2;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 777
    return-void
.end method
