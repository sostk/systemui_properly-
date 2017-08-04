.class Lcom/meizu/common/widget/FoldableTextView$1;
.super Ljava/lang/Object;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 589
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 575
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1200(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 581
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 583
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1300(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$1302(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 584
    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 577
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1000(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 583
    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 594
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 571
    return-void
.end method
