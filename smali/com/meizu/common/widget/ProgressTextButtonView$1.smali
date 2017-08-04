.class Lcom/meizu/common/widget/ProgressTextButtonView$1;
.super Ljava/lang/Object;
.source "ProgressTextButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ProgressTextButtonView;->showText(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    iput-boolean p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->val$show:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v1}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setAlpha(F)V

    .line 183
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v1}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;

    move-result-object v1

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v1}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;

    move-result-object v1

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setAlpha(F)V

    .line 180
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$1;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v1}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
