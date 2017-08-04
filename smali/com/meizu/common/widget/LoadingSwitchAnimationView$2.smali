.class Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;
.super Ljava/lang/Object;
.source "LoadingSwitchAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingSwitchAnimationView;->startAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

.field final synthetic val$isLeftToRight:Z


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingSwitchAnimationView;Z)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iput-boolean p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->val$isLeftToRight:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->val$isLeftToRight:Z

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, v1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    .line 525
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iput-boolean v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    .line 526
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, v1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->val$isLeftToRight:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, v1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    .line 510
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iput-boolean v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    .line 511
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v0, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

    if-nez v0, :cond_1

    .line 514
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    .line 515
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v1, v1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    iget-object v0, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;->AnimationEnd()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 531
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView$2;->this$0:Lcom/meizu/common/widget/LoadingSwitchAnimationView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    .line 500
    return-void
.end method
