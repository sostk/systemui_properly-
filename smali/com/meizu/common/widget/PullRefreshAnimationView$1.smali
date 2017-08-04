.class Lcom/meizu/common/widget/PullRefreshAnimationView$1;
.super Ljava/lang/Object;
.source "PullRefreshAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PullRefreshAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PullRefreshAnimationView;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$100(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    :cond_1
    :goto_1
    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$100(Lcom/meizu/common/widget/PullRefreshAnimationView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$200(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v3}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$400(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v4}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$200(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->postInvalidate(IIII)V

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$700(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$500(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$600(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$800(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$900(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    float-to-int v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v6

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v3}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v3}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1100(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v3}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v4}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$800(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v4}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$900(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v4}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1000(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v5}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v5}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1100(Lcom/meizu/common/widget/PullRefreshAnimationView;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 399
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$700(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v1}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1200(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$600(Lcom/meizu/common/widget/PullRefreshAnimationView;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1300(Lcom/meizu/common/widget/PullRefreshAnimationView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 405
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshAnimationView$1;->this$0:Lcom/meizu/common/widget/PullRefreshAnimationView;

    invoke-static {v0, v8}, Lcom/meizu/common/widget/PullRefreshAnimationView;->access$1302(Lcom/meizu/common/widget/PullRefreshAnimationView;Landroid/animation/Animator;)Landroid/animation/Animator;

    goto/16 :goto_1
.end method
