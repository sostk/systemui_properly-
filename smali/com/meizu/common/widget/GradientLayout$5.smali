.class Lcom/meizu/common/widget/GradientLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradientLayout.java"


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
    .line 818
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout$5;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$5;->this$0:Lcom/meizu/common/widget/GradientLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/GradientLayout;->access$2102(Lcom/meizu/common/widget/GradientLayout;Z)Z

    .line 831
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$5;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 832
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/16 v1, 0x9

    .line 823
    new-array v0, v1, [F

    .line 824
    .local v0, "matrixValues":[F
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$5;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$1200(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 825
    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$5;->this$0:Lcom/meizu/common/widget/GradientLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/GradientLayout;->access$1802(Lcom/meizu/common/widget/GradientLayout;F)F

    .line 826
    return-void
.end method
