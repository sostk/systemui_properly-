.class Lcom/meizu/common/widget/SkipPosSeekBar$1;
.super Ljava/lang/Object;
.source "SkipPosSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SkipPosSeekBar;->startAnimation(IFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

.field final synthetic val$curProgress:I

.field final synthetic val$endPos:F

.field final synthetic val$startPos:F


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SkipPosSeekBar;FFI)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iput p2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$endPos:F

    iput p3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$startPos:F

    iput p4, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$curProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .local v1, "temp":F
    const/4 v0, 0x0

    .line 101
    .local v0, "offsetProcess":I
    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$endPos:F

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$startPos:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 102
    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$endPos:F

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$startPos:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-static {v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->access$000(Lcom/meizu/common/widget/SkipPosSeekBar;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 103
    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$curProgress:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->access$102(Lcom/meizu/common/widget/SkipPosSeekBar;I)I

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-static {v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->access$100(Lcom/meizu/common/widget/SkipPosSeekBar;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 109
    return-void

    .line 105
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$startPos:F

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$endPos:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-static {v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->access$000(Lcom/meizu/common/widget/SkipPosSeekBar;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 106
    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$1;->val$curProgress:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->access$102(Lcom/meizu/common/widget/SkipPosSeekBar;I)I

    goto :goto_0
.end method
