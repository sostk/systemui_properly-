.class Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

.field final synthetic val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1424
    .local v3, "value":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1600(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v5}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 1429
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 1430
    .local v0, "leftOffset":I
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v4

    sub-int v2, v4, v0

    .line 1431
    .local v2, "rightOffset":I
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v5}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 1434
    .local v1, "padding":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    add-int v5, v0, v1

    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v7}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1900(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1437
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v4, v4, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v4}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    .line 1438
    return-void

    .line 1425
    .end local v0    # "leftOffset":I
    .end local v1    # "padding":I
    .end local v2    # "rightOffset":I
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1600(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 1426
    .restart local v0    # "leftOffset":I
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1600(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v4

    sub-int v2, v4, v0

    .line 1427
    .restart local v2    # "rightOffset":I
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1    # "padding":I
    goto :goto_0
.end method
